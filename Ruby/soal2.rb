#Class Ikan sebagai Superclass
class Ikan
    def initialize(umur,jk)
        @umur = umur.to_f
        @jk = jk
    end

    def printUmur
        puts "Umur = #{@umur}"
    end

    def printJK
        puts "JK = #@jk"
    end

    def printSuara 
        puts "suara glup glup"
    end
end

#Module CheckDewasa untuk memeriksa apakah ikan memiliki status indukan atau anakan
module CheckDewasa
    def isDewasa?
        if @umur > 5
            puts "Status = Indukan/Dewasa"
        else
            puts "Status = Anakan"
        end
    end
end


#Class Cupang sebagai Subclass
class Cupang < Ikan
    include CheckDewasa
    def initialize(umur, jk, nama, jenis)
        super(umur,jk)
        @nama = nama
        @jenis = jenis
    end

    def printNama
        puts "nama = #@nama"
    end

    def printJenis
        puts "jenis = #@jenis" 
    end

    def printSuara 
        puts "suara = glup glup aku #@nama"
    end
end

puts "Test Class Ikan"
ikan = Ikan.new(5, "M")
ikan.printUmur
ikan.printJK
ikan.printSuara

puts "\nTest 1"
cupang1 = Cupang.new(3.5, "F", "Si Dua Warna", "HalfMoon")
cupang1.printJenis
cupang1.printJK
cupang1.printNama
cupang1.printSuara
cupang1.printUmur
cupang1.isDewasa?

puts "\nTest 2"

cupang2 = Cupang.new(6.2, "M", "Si Biru Putih", "PK Blue Rim")
cupang2.printJenis
cupang2.printJK
cupang2.printNama
cupang2.printSuara
cupang2.printUmur
cupang2.isDewasa?