class Mobil
    def initialize(nama, warna, tahun, kecepatan=0)
        @nama = nama
        @warna = warna
        @tahun = tahun
        @kecepatan = kecepatan
    end

    def tambahKecepatan(pertambahanKecepatan)
        @kecepatan += pertambahanKecepatan
        puts "Anda menginjak gas dan mempercepat #{pertambahanKecepatan} km/jam"
    end

    def kurangiKecepatan(penguranganKecepatan)
        if @kecepatan - penguranganKecepatan < 0
            puts "Anda tidak bisa mengurangi kecepatan lebih dari 0 km/jam"
        else
            @kecepatan -= penguranganKecepatan
        puts "Anda menginjak rem dan memperlambat #{penguranganKecepatan} km/jam"
        end
    end

    def matikanMesin
        if @kecepatan != 0
            puts "Anda harus menurunkan kecepatan terlebih dahulu sebelum mematikan mesin"
        else 
            puts "Mesin anda sudah dimatikan, Yuk ah kita parkir"
        end
    end
    def printKecepatan
        puts "Kecepatan anda sekarang #@kecepatan km/jam"
    end
end

mobil1 = Mobil.new("Toyota", "Merah", 2010)
mobil1.tambahKecepatan(20)
mobil1.printKecepatan
mobil1.tambahKecepatan(20)
mobil1.printKecepatan
mobil1.kurangiKecepatan(20)
mobil1.printKecepatan
mobil1.matikanMesin
mobil1.kurangiKecepatan(20)
mobil1.printKecepatan
mobil1.kurangiKecepatan(20)
mobil1.matikanMesin