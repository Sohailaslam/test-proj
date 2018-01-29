class RandApp < ApplicationRecord
    def self.graph
        hash = Hash.new
        RandApp.all.each do |num|
            hash[num.number] = 0
        end
        
        RandApp.all.each do |num|
            hash[num.number] = hash[num.number] + 1
        end
        # return hash
        datas = []
        hash.each do |key,value|
            datas.append({
                label: key,
            # fillColor: '#382765',
                data: value
                
            })
        end
        data = { labels: RandApp.all.sort.map{|c| c.number}.uniq,datasets: datas}
        
        return data
        # datasets: [
        #         {
        #             # backgroundColor: "rgba(220,220,220,0.2)",
        #             # borderColor: "rgba(220,220,220,1)",
        #             label: @quiz.name,
        #             fillColor: '#382765',
        #             data: score.values
        #         }
        #     ]
        
        return hash
    end
end
