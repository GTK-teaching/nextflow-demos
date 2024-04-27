include { validateParameters; paramsHelp; paramsSummaryLog; fromSamplesheet } from 'plugin/nf-validation'

// Print help message, supply typical command line usage for the pipeline
if (params.help) {
   log.info paramsHelp("nextflow run my_pipeline --input input_file.csv")
   exit 0
}

// Validate input parameters
validateParameters()

// Print summary of supplied parameters
log.info paramsSummaryLog(workflow)

// Create a new channel of metadata from a sample sheet
// NB: `input` corresponds to `params.input` and associated sample sheet schema
ch_fastq = Channel.empty()

workflow { 
   ch_input = Channel.fromSamplesheet("input")
   ch_input
      .map { 
         meta, fastq_1, fastq_2 ->
            if (!fastq_2) {
               return [ meta.id, meta + [ single_end:true], [fastq_1] ]
            } else { 
               return [ meta.id, meta + [ single_end:false], [fastq_1, fastq_2 ] ]
            }
        }
      .groupTuple()
      .branch {
         meta, fastqs ->
            single  : fastqs.size() == 1           
               return [ meta, fastqs.flatten() ]
            multiple: fastqs.size() > 1
               return [ meta, fastqs.flatten() ]
        }
        .set { ch_fastq } 
        
   ch_fastq.view()
}