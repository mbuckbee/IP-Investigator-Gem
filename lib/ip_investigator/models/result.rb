# This file was automatically generated for Expedited Addons by APIMATIC v2.0 ( https://apimatic.io ) on 06/03/2016

module IpInvestigator
  class Result

    # TODO: Write general description for this method
    # @return [Boolean]
    attr_accessor :is_listed

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :list_count

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :last_seen

    # TODO: Write general description for this method
    # @return [Boolean]
    attr_accessor :is_proxy

    # TODO: Write general description for this method
    # @return [Boolean]
    attr_accessor :is_tor

    # TODO: Write general description for this method
    # @return [Boolean]
    attr_accessor :is_vpn

    # TODO: Write general description for this method
    # @return [Boolean]
    attr_accessor :is_malware

    # TODO: Write general description for this method
    # @return [Boolean]
    attr_accessor :is_spyware

    # TODO: Write general description for this method
    # @return [Boolean]
    attr_accessor :is_dshield

    # TODO: Write general description for this method
    # @return [Boolean]
    attr_accessor :is_hijacked

    # TODO: Write general description for this method
    # @return [Boolean]
    attr_accessor :is_spider

    # TODO: Write general description for this method
    # @return [Boolean]
    attr_accessor :is_bot

    # TODO: Write general description for this method
    # @return [Boolean]
    attr_accessor :is_spam_bot

    # TODO: Write general description for this method
    # @return [Boolean]
    attr_accessor :is_exploit_bot

    def initialize(is_listed = nil,
                   list_count = nil,
                   last_seen = nil,
                   is_proxy = nil,
                   is_tor = nil,
                   is_vpn = nil,
                   is_malware = nil,
                   is_spyware = nil,
                   is_dshield = nil,
                   is_hijacked = nil,
                   is_spider = nil,
                   is_bot = nil,
                   is_spam_bot = nil,
                   is_exploit_bot = nil)
      @is_listed = is_listed
      @list_count = list_count
      @last_seen = last_seen
      @is_proxy = is_proxy
      @is_tor = is_tor
      @is_vpn = is_vpn
      @is_malware = is_malware
      @is_spyware = is_spyware
      @is_dshield = is_dshield
      @is_hijacked = is_hijacked
      @is_spider = is_spider
      @is_bot = is_bot
      @is_spam_bot = is_spam_bot
      @is_exploit_bot = is_exploit_bot

    end

    def method_missing(method_name)
      puts "There is no method called '#{method_name}'."
    end

    # Creates JSON of the curent object
    def to_json(options = {})
      hash = key_map
      hash.to_json(options)
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        is_listed = hash["is_listed"]
        list_count = hash["list_count"]
        last_seen = hash["last_seen"]
        is_proxy = hash["is_proxy"]
        is_tor = hash["is_tor"]
        is_vpn = hash["is_vpn"]
        is_malware = hash["is_malware"]
        is_spyware = hash["is_spyware"]
        is_dshield = hash["is_dshield"]
        is_hijacked = hash["is_hijacked"]
        is_spider = hash["is_spider"]
        is_bot = hash["is_bot"]
        is_spam_bot = hash["is_spam_bot"]
        is_exploit_bot = hash["is_exploit_bot"]
        # Create object from extracted values
        Result.new(is_listed,
                   list_count,
                   last_seen,
                   is_proxy,
                   is_tor,
                   is_vpn,
                   is_malware,
                   is_spyware,
                   is_dshield,
                   is_hijacked,
                   is_spider,
                   is_bot,
                   is_spam_bot,
                   is_exploit_bot)
      end
    end

    # Defines the key map for json serialization
    def key_map
      hash = {}
      hash['is_listed'] = is_listed
      hash['list_count'] = list_count
      hash['last_seen'] = last_seen
      hash['is_proxy'] = is_proxy
      hash['is_tor'] = is_tor
      hash['is_vpn'] = is_vpn
      hash['is_malware'] = is_malware
      hash['is_spyware'] = is_spyware
      hash['is_dshield'] = is_dshield
      hash['is_hijacked'] = is_hijacked
      hash['is_spider'] = is_spider
      hash['is_bot'] = is_bot
      hash['is_spam_bot'] = is_spam_bot
      hash['is_exploit_bot'] = is_exploit_bot
      hash
    end
  end
end
