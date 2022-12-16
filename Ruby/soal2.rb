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
objek = Ikan.new(5, "M")
objek.printUmur
objek.printJK
objek.printSuara

puts "\nTest 1"
objek = Cupang.new(3.5, "F", "Si Dua Warna", "HalfMoon")
objek.printJenis
objek.printJK
objek.printNama
objek.printSuara
objek.printUmur
objek.isDewasa?

puts "\nTest 2"

objek2 = Cupang.new(6.2, "M", "Si Biru Putih", "PK Blue Rim")
objek2.printJenis
objek2.printJK
objek2.printNama
objek2.printSuara
objek2.printUmur
objek2.isDewasa?