class MainController < ApplicationController
	require 'curb'
	require 'json'

	$state = 0

	def index
	
		@id = 1

		http = Curl.post("http://localhost:8080/room#{@id}", 
			"{ \"state\": #{$state} }")

		result = http.body_str
		data_hash = JSON.parse(result)
		message = data_hash['message']
		status = data_hash['status']
		jsondata = data_hash['jsondata']

		@message = message
		$state = status

	end

	def room2
		# @id = 2

		http = Curl.post("http://localhost:8080/room2", 
			"{ \"state\": #{$state} }")

		result = http.body_str

		data_hash = JSON.parse(result)
		message = data_hash['message']
		status = data_hash['status']
		json = data_hash['jsondata']

		@message = message
		$state = status

	end

	def look_room2
		http = Curl.post("http://localhost:8080/room2", 
			"{ \"command\":\"look\", \"state\": #{$state} }")

		result = http.body_str

		#have to change and save and tranfer state after submit

		data_hash = JSON.parse(result)
		message = data_hash['message']
		status = data_hash['status']
		jsondata = data_hash['jsondata']

		@message = message
		$state = status

	end

	def dig_room2
		http = Curl.post("http://localhost:8080/room2", 
			"{ \"command\":\"dig\", \"state\": #{$state} }")

		result = http.body_str

		#have to change and save and tranfer state after submit

		data_hash = JSON.parse(result)
		message = data_hash['message']
		status = data_hash['status']
		jsondata = data_hash['jsondata']

		@message = message
		$state = status

	end

	def diglook_room2
		# @state = 10
		@id = 2

		http = Curl.post("http://localhost:8080/room2", 
			"{ \"command\":\"look\", \"state\": #{$state} }")

		result = http.body_str

		#have to change and save and tranfer state after submit

		data_hash = JSON.parse(result)
		message = data_hash['message']
		status = data_hash['status']
		jsondata = data_hash['jsondata']

		@message = message
		$state = status

	end

	def swim_room2
		# @state = 10
		@id = 2

		http = Curl.post("http://localhost:8080/room2", 
			"{ \"command\":\"swim\", \"state\": #{$state} }")

		result = http.body_str

		#have to change and save and tranfer state after submit

		data_hash = JSON.parse(result)
		message = data_hash['message']
		status = data_hash['status']
		jsondata = data_hash['jsondata']

		@message = message
		$state = status


	end

	def swimsword_room2
		# @id = 2

		http = Curl.post("http://localhost:8080/room2", 
			"{ \"command\":\"takeSword\", \"state\": #{$state} }")

		result = http.body_str

		#have to change and save and tranfer state after submit

		data_hash = JSON.parse(result)
		message = data_hash['message']
		status = data_hash['status']
		jsondata = data_hash['jsondata']

		@message = message
		$state = status

	end

	# Room 3

	def room3
		http = Curl.post("http://localhost:8080/room3", 
			"{ \"state\": #{$state} }")

		result = http.body_str

		data_hash = JSON.parse(result)
		message = data_hash['message']
		status = data_hash['status']
		json = data_hash['jsondata']

		@message = message
		$state = status

	end

	def attack_room3
		http = Curl.post("http://localhost:8080/room3", 
			"{ \"command\":\"attack\", \"state\": #{$state} }" )

		result = http.body_str

		data_hash = JSON.parse(result)
		message = data_hash['message']
		status = data_hash['status']
		json = data_hash['jsondata']

		@message = message
		$state = status

	end

	def look_room3
		http = Curl.post("http://localhost:8080/room3", 
			"{ \"command\":\"look\", \"state\": #{$state} }" )

		result = http.body_str

		data_hash = JSON.parse(result)
		message = data_hash['message']
		status = data_hash['status']
		json = data_hash['jsondata']

		@message = message
		$state = status

	end

	def open_chest_room3

		http = Curl.post("http://localhost:8080/room3", 
			"{ \"command\":\"openChest\", \"state\": #{$state} }")

		result = http.body_str

		data_hash = JSON.parse(result)
		message = data_hash['message']
		status = data_hash['status']
		json = data_hash['jsondata']

		@message = message
		$state = status

	end

	def room4
		http = Curl.post("http://localhost:8080/room4", 
			"{ \"state\": #{$state} }")

		result = http.body_str

		data_hash = JSON.parse(result)
		message = data_hash['message']
		status = data_hash['status']
		json = data_hash['jsondata']

		@message = message
		$state = status

	end

	def look_room4

		http = Curl.post("http://localhost:8080/room4", 
			"{ \"command\":\"look\", \"state\": #{$state} }")

		result = http.body_str

		data_hash = JSON.parse(result)
		message = data_hash['message']
		status = data_hash['status']
		json = data_hash['jsondata']

		@message = message
		$state = status

	end

	def answer_room4
		# @answer = params[:number]

		http = Curl.post("http://localhost:8080/room4", 
			"{ \"command\":\"answer 200754\", \"state\": #{$state} }")

		result = http.body_str

		data_hash = JSON.parse(result)
		message = data_hash['message']
		status = data_hash['status']
		json = data_hash['jsondata']

		@message = message
		$state = status

	end

	def room5
		http = Curl.post("http://localhost:8080/room5", 
			"{ \"state\": #{$state} }")

		result = http.body_str

		data_hash = JSON.parse(result)
		message = data_hash['message']
		status = data_hash['status']
		json = data_hash['jsondata']

		@message = message
		$state = status

	end

	def passphrase_room5
		http = Curl.post("http://localhost:8080/room5", 
			"{ \"command\":\"passphrase Alakazam\", \"state\": #{$state} }")

		result = http.body_str

		data_hash = JSON.parse(result)
		message = data_hash['message']
		status = data_hash['status']
		json = data_hash['jsondata']

		@message = message
		$state = status

	end

	def attack_room5
		http = Curl.post("http://localhost:8080/room5", 
			"{ \"command\":\"attack\", \"state\": #{$state} }" )

		result = http.body_str

		data_hash = JSON.parse(result)
		message = data_hash['message']
		status = data_hash['status']
		json = data_hash['jsondata']

		@message = message
		$state = status

	end

	def look_room5

		http = Curl.post("http://localhost:8080/room5", 
			"{ \"command\":\"look\", \"state\": #{$state} }")

		result = http.body_str

		data_hash = JSON.parse(result)
		message = data_hash['message']
		status = data_hash['status']
		json = data_hash['jsondata']

		@message = message
		$state = status

	end

end
