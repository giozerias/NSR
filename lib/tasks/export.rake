namespace :export do
  desc "Prints Superhero.all in a seeds.rb way."
  task :seeds_format => :environment do
    Superhero.order(:id).all.each do |superhero|
      puts "Superhero.create(#{superhero.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end
  end
end