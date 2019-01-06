class AddDataToRules < ActiveRecord::Migration[5.2]
  
  def self.up
    Rule.create(:kind => 1, :item_number => "164a", :law => "Kılık-kıyafete ilişkin mevzuat hükümlerine uymamak,")
    Rule.create(:kind => 1, :item_number => "164b", :law => "(Değişik:RG-1/7/2015-29403) Tütün ve tütün mamullerini bulundurmak veya kullanmak,")
    Rule.create(:kind => 1, :item_number => "164c", :law => "Başkasına ait eşyayı izinsiz almak veya kullanmak,")
    Rule.create(:kind => 1, :item_number => "164ç", :law => "Yalan söylemek,")
    Rule.create(:kind => 1, :item_number => "164d", :law => "(Değişik:RG-28/10/2016-29871) Okula geldiği hâlde özürsüz eğitim ve öğretim faaliyetlerine, törenlere, sosyal etkinliklere ve okul pansiyonlarında etüde katılmamak, geç katılmak veya bunlardan erken ayrılmak,")
    Rule.create(:kind => 1, :item_number => "164e", :law => "(Değişik:RG-28/10/2016-29871) Okul kütüphanesi, atölye, laboratuvar, pansiyon veya diğer bölümlerden aldığı kitap, araç-gereç ve malzemeyi, eksik vermek veya kötü kullanmak,")
    Rule.create(:kind => 1, :item_number => "164f", :law => "Kaba ve saygısız davranmak,")
    Rule.create(:kind => 1, :item_number => "164g", :law => "(Değişik:RG-1/7/2015-29403) Dersin ve ders dışı eğitim faaliyetlerinin akışını ve düzenini bozacak davranışlarda bulunmak,")
    Rule.create(:kind => 1, :item_number => "164h", :law => "Kopya çekmek veya çekilmesine yardımcı olmak,")
    Rule.create(:kind => 1, :item_number => "164ı", :law => "(Değişik:RG-1/7/2015-29403) Yatılı okullarda pansiyona geç gelmek,")
    Rule.create(:kind => 1, :item_number => "164i", :law => "(Değişik:RG-1/7/2015-29403) Müstehcen veya yasaklanmış araç, gereç ve dokümanları okula ve okula bağlı yerlere sokmak veya yanında bulundurmak,")
    Rule.create(:kind => 1, :item_number => "164j", :law => "(Değişik:RG-1/7/2015-29403) Kumar oynamaya yarayan araç-gereç ve doküman bulundurmak,")
    Rule.create(:kind => 1, :item_number => "164k", :law => "Bilişim araçlarını amacı dışında kullanmak,")
    Rule.create(:kind => 1, :item_number => "164l", :law => "Alınan sağlık ve güvenlik tedbirlerine uymamak.")
    Rule.create(:kind => 1, :item_number => "164m", :law => "(Ek:RG-1/7/2015-29403) (Değişik:RG-28/10/2016-29871) Ders saatleri içinde öğretmenin bilgisi ve kontrolü dışında bilişim araçlarını açık tutarak dersin akışını bozmak.")
    Rule.create(:kind => 1, :item_number => "164n", :law => "(Değişik:RG-28/10/2016-29871) Kişilere, arkadaşlarına, okul yöneticilerine, öğretmenlerine ve diğer çalışanlarına karşı okul içinde ve dışında sözle, davranışla veya sosyal medya üzerinden hakaret etmek, hakareti paylaşmak, yaymak veya başkalarını bu davr")
  end
  
end
