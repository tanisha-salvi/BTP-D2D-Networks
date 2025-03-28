#ifdef NS3_MODULE_COMPILATION 
    error "Do not include ns3 module aggregator headers from other modules these are meant only for end user scripts." 
#endif 
#ifndef NS3_MODULE_NR_PROSE
    // Module headers: 
    #include <ns3/nr-sl-discovery-trace.h>
    #include <ns3/nr-sl-prose-helper.h>
    #include <ns3/nr-sl-relay-trace.h>
    #include <ns3/nr-sl-discovery-header.h>
    #include <ns3/nr-sl-pc5-signalling-header.h>
    #include <ns3/nr-sl-ue-prose-direct-link.h>
    #include <ns3/nr-sl-ue-prose.h>
    #include <ns3/nr-sl-ue-service.h>
    #include <ns3/nr-sl-ue-prose-relay-selection-algorithm.h>
#endif 