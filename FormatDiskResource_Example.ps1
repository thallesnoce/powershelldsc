# ### Example configuration referencing the new composite resource
# Configuration aaaaaa {
    
#     Import-DscResource -ModuleName GLResources

#     Node localhost {

#         FormatDiskResource bbbbbb {
#             property = value
#         }

#     }
# }