module Fastlane
    module Actions
        module SharedValues
            POD_TRUNK_DELETE_CUSTOM_VALUE = :POD_TRUNK_DELETE_CUSTOM_VALUE
        end

        class PodTrunkDeleteAction < Action
            def self.run(params)

                target_name = params[:name]
                target_version = params[:version]

                # fastlane will take care of reading in the parameter and fetching the environment variable:
                UI.message "Parameter pod name: #{target_name} pod version:#{target_version}"


                sh "pod trunk delete #{target_name} #{target_version}"
                # sh "shellcommand ./path"

                # Actions.lane_context[SharedValues::POD_TRUNK_DELETE_CUSTOM_VALUE] = "my_val"
            end

            #####################################################
            # @!group Documentation
            #####################################################

            def self.description
                'An action for pod trunk delete.'
            end

            def self.details
                # Optional:
                # this is your chance to provide a more detailed description of this action
                'You can use this action to delete a version of pod.'
            end

            def self.available_options
                # Define all options your action supports.

                # Below a few examples
                [
                    FastlaneCore::ConfigItem.new(key: :name,
                                                 env_name: 'FL_POD_TRUNK_DELETE_NAME', # The name of the environment variable
                                                 description: 'The pod name for PodTrunkDeleteAction', # a short description of this parameter
                                                 verify_block: proc do |value|
                                                     UI.user_error!("No pod name for PodTrunkDeleteAction given, pass using `name: 'pod name'`") unless value && !value.empty?
                                                     # UI.user_error!("Couldn't find file at path '#{value}'") unless File.exist?(value)
                                                 end),
                    FastlaneCore::ConfigItem.new(key: :version,
                                                 env_name: 'FL_POD_TRUNK_DELETE_VERSION',
                                                 description: 'The pod version for PodTrunkDeleteAction',
                                                 verify_block: proc do |value|
                                                     UI.user_error!("No pod version for PodTrunkDeleteAction given, pass using `version: 'pod version'`") unless value && !value.empty?
                                                     # UI.user_error!("Couldn't find file at path '#{value}'") unless File.exist?(value)
                                                 end),
                ]
            end

            def self.output
                # Define the shared values you are going to provide
                # Example
                [
                    ['POD_TRUNK_DELETE_CUSTOM_VALUE', 'A description of what this value contains']
                ]
            end

            def self.return_value
                # If you method provides a return value, you can describe here what it does
            end

            def self.authors
                # So no one will ever forget your contribution to fastlane :) You are awesome btw!
                ['ripperhe']
            end

            def self.is_supported?(platform)
                # you can do things like
                #
                #  true
                #
                #  platform == :ios
                #
                #  [:ios, :mac].include?(platform)
                #

                platform == :ios
            end
        end
    end
end
