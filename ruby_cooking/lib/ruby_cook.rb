require 'csv'
require 'json'

def ruby_main
    recipi = {'dishes'=>[] , 'ingredients'=>[] , 'equipments'=>[]}
    ruby_cooking("../data/tableA.csv",recipi)
    ruby_cooking("../data/tableB.csv",recipi)
    p recipi.to_json
end

def ruby_cooking(file_path,recipi)
    open_file = CSV.open(file_path)
    open_file.readline
    open_file.each do |row|
        cook_name = ''
        row.join(',').gsub(/(\s|　)+/, '').gsub('、',',').gsub('／',',').split(",").each_with_index  do |str,i|
            unless str.empty?
                # 料理名・その他
                if i == 0 then
                    # 料理名が存在してるか確認
                    cook_name = str
                    target_record = recipi['dishes'].select{|a|a['name']==str}
                    if target_record.empty?
                        buff_hash = {'id'=>(recipi['dishes'].length + 1),'name'=>str,'ingredients'=>[],'equipments'=>[]}
                        recipi['dishes'].push(buff_hash) 
                    end
                else
                    # 材料
                    target_recipi = file_path.include?('tableA') ? 'ingredients' : 'equipments'
                    target_record = recipi[target_recipi].select{|a|a['name']==str}
                    if target_record.empty?
                        buff_ingredients = {'id'=>(recipi[target_recipi].length + 1),'name'=>str}
                        recipi[target_recipi].push(buff_ingredients)
                    end
                    # メインテーブルにツッコム
                    recipi['dishes'].each do |target|
                        if target['name'] == cook_name
                            recipi[target_recipi].each do |record_data|
                                if record_data['name'] == str
                                    target[target_recipi].push(record_data['id'])
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end

# メインタイキック
ruby_main()