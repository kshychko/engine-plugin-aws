[#ftl]

[#assign componentConfiguration +=
    {
        USER_COMPONENT_TYPE : {
            "Properties"  : [
                {
                    "Type"  : "Description",
                    "Value" : "A user with permissions on components deployed in the solution"
                },
                {
                    "Type" : "Providers",
                    "Value" : [ "aws" ]
                },
                {
                    "Type" : "ComponentLevel",
                    "Value" : "application"
                }
            ],
            "Attributes" : [
                {
                    "Names" : ["Fragment", "Container"],
                    "Type" : STRING_TYPE,
                    "Default" : ""
                },
                {
                    "Names" : "Links",
                    "Subobjects" : true,
                    "Children" : linkChildrenConfiguration
                },
                {
                    "Names" : "Profiles",
                    "Children" : profileChildConfiguration
                },
                {
                    "Names" : "GenerateCredentials",
                    "Children" : [
                        {
                            "Names" : "Formats",
                            "Type" : ARRAY_OF_STRING_TYPE,
                            "Values" : ["system", "console"],
                            "Default"  : [ "system" ]
                        }
                        {
                            "Names" : "EncryptionScheme",
                            "Type" : STRING_TYPE,
                            "Values" : ["base64"],
                            "Default" : ""
                        },
                        {
                            "Names" : "CharacterLength",
                            "Type" : NUMBER_TYPE,
                            "Default" : 20
                        }
                    ]
                },
                {
                "Names" : "Permissions",
                "Children" : [
                        {
                            "Names" : "Decrypt",
                            "Type" : BOOLEAN_TYPE,
                            "Default" : true
                        },
                        {
                            "Names" : "AsFile",
                            "Type" : BOOLEAN_TYPE,
                            "Default" : true
                        },
                        {
                            "Names" : "AppData",
                            "Type" : BOOLEAN_TYPE,
                            "Default" : true
                        },
                        {
                            "Names" : "AppPublic",
                            "Type" : BOOLEAN_TYPE,
                            "Default" : true
                        }
                    ]
                }
            ]
        }
    }]