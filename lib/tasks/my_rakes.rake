desc "Import targets"
task :import_targets => :environment do
  File.open("targets.txt", "r").each do |line|
    taxonomy, targetValue = line.split(" ")
    Target.create(taxonomy: taxonomy, targetValue: targetValue)
  end
end

desc "Import products"
task :import_products => :environment do
  File.open("products.txt", "r").each_with_index do |line, index|
    if index != 0 #skips first line of products.txt
      sku, name, description, store_id, department_id, category_id, subcategory_id, price = line.split("|")
      priceList = price[1..-1] #removes dollar sign
      taxonomy = ["sto#{store_id}", "dep#{department_id}", "cat#{category_id}", "sub#{subcategory_id}"]
      targetValues = taxonomy.map do |tax|
        target = Target.find_by(taxonomy: tax)
        if target
          target.targetValue
        end
      end

      Product.create(sku: sku, name: name, description: description, priceList: priceList, taxonomy: taxonomy, targetValues: targetValues)
    end
  end
end
