# Parse sample data and load into database

require 'csv'

puts "Load sample_agents.csv"
csv_text1 = File.read(Rails.root.join('lib', 'seeds', 'sample_agents.csv'))
csv_agents = CSV.parse(csv_text1, :headers => true, :encoding => 'ISO-8859-1')
csv_agents.each do |row|
    a = Agent.new
    a.first_name = row['First Name']
    a.last_name = row['Last Name']
    a.email = row['Email']
    a.phone_number = row['Phone Number']
    a.save
    puts "Agent: #{a.first_name} #{a.last_name} saved"
end

puts "Load sample_properties.csv"
csv_text2 = File.read(Rails.root.join('lib', 'seeds', 'sample_properties.csv'))
csv_properties = CSV.parse(csv_text2, :headers => true, :encoding => 'ISO-8859-1')
csv_properties.each do |row|
    p = Property.new
    p.address = row['Address']
    p.unit_number = row['Unit Number']
    p.price = row['Price']
    p.status = row['Status']
    p.description = row['Description']
    p.bathroom_count = row['Bathroom Count']
    p.bedroom_count = row['Bedroom Count']
    p.property_type = row['Property Type']
    p.square_feet = row['Square Feet']
    p.total_rooms = row['Total Rooms']
    p.agent_1 = row['Listing Agent 1']
    p.agent_2 = row['Listing Agent 2']
    p.save
    puts "Property: #{p.address} #{p.agent_1} #{p.agent_1} saved"
end
