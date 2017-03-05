module Fastlane
  module Actions
    module SharedValues
      POD_TRUNK_DELETE_CUSTOM_VALUE = :POD_TRUNK_DELETE_CUSTOM_VALUE
    end

    class PodTrunkDeleteAction < Action
      def self.run(params)
        target_name = params[:name]
        target_version = params[:version]

        UI.message "Parameter pod name: #{target_name} pod version:#{target_version}"

        Action.sh("pod trunk delete #{target_name} #{target_version}")
      end

      #####################################################
      # @!group Documentation
      #####################################################

      def self.description
        "An action for pod trunk delete."
      end

      def self.details
        "You can use this action to delete a version of pod."
      end

      def self.available_options
        [
          FastlaneCore::ConfigItem.new(key: :name,
                                       description: 'The pod name for PodTrunkDeleteAction', # a short description of this parameter
                                       verify_block: proc do |value|
                                           UI.user_error!("No pod name for PodTrunkDeleteAction given, pass using `name: 'pod name'`") unless value && !value.empty?
                                       end),
          FastlaneCore::ConfigItem.new(key: :version,
                                       description: 'The pod version for PodTrunkDeleteAction',
                                       verify_block: proc do |value|
                                           UI.user_error!("No pod version for PodTrunkDeleteAction given, pass using `version: 'pod version'`") unless value && !value.empty?
                                       end),
        ]
      end

      def self.output
      end

      def self.return_value
        nil
      end

      def self.authors
        ["ripperhe"]
      end

      def self.is_supported?(platform)
        [:ios, :mac].include?(platform)
      end
    end
  end
end
