require "experience/web/version"

module Experience
  module Web
    class Platform
      def initialize browser
        @browser = browser
      end

      def get_content identifier
        @browser.element(identifier).text
      end
    end
  end
end
