namespace :slurp do
  desc "TODO"
  task companies: :environment do
    require "csv"

    csv_text = File.read(Rails.root.join("lib", "csvs", "companies.csv"))
    csv = CSV.parse(csv_text, :headers => true, :encoding => "ISO-8859-1")
    csv.each do |row|
      c = Company.new
      c.company_name = row["Companies"]
      c.save
      puts "#{c.company_name} saved"
    end

    puts "There are now #{Company.count} rows in the companies table"

  end

end
