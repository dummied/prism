module HMachine
  module Microformat
    class RelLicense < POSH::Anchor
      WIKI_URL = 'http://microformats.org/wiki/rel-license'
      XMDP = 'http://microformats.org/profile/rel-license'
      
      selector 'a[rel~="license"], link[rel~="license"]'
      
      validate {|a| a['rel'] && a['rel'].split.include?('license') }
                  
      alias license url
      
      def to_s
        license
      end
      
    end
  end
end