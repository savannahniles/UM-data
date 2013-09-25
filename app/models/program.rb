class Program < ActiveRecord::Base
	has_many :relationships, dependent: :destroy
	
	validates :title, presence: true
	validates :tmsId, presence: true, uniqueness: true

	def self.pull_programs_from_TMS
		base = "http://data.tmsapi.com/v1/"
		lineupID = "USA-MA02317-X"
		startDateTime = "2013-09-24T11:00Z"
		apiKey = "rm34r663sdax6ggvpcerjfs3"
		getLineup = "lineups/" + lineupID + "/grid?startDateTime=" + startDateTime + "&enhancedCallSign=true&api_key=" + apiKey

		url = base + getLineup;
		resp = Net::HTTP.get_response(URI.parse(url))
   		data = resp.body

		#-------

		result = JSON.parse(data)

		print result[0]


	end

end
