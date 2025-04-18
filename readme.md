# SRO:SB - Client Data Repository

**TR | Türkçe açıklama aşağıdadır.**

This repository contains the **reference client data** used by [SRO:SB](https://github.com/your_org/srosb-main), the Silkroad Online Server Browser.  
It allows compatibility between multiple servers by storing split base client files.  

Each server owner should **fork** this repository and upload their own client modifications.  
This enables SRO:SB to fetch updated files specific to that server, ensuring compatibility and better user experience.

---

## Part of the SRO:SB Project

SRO:SB consists of three repositories:

1. **[SRO:SB - Game Browser](https://github.com/your_org/srosb-main)**  
   The main launcher where players explore available servers and join them via Gateway.

2. **[SRO:SB - Server Hub](https://github.com/your_org/srosb-serverhub)**  
   A management panel for server owners to list and configure their servers.

3. **SRO:SB - Client Data** (This repository)  
   Reference repository for storing split client files.  
   Forked and customized by each server to host their unique files.

---

## How to Use (For Server Owners)

1. Fork this repository.
2. Use `splitter_data.exe` or `splitter_data.py` to split your client files.
3. Upload the resulting parts to your forked repository.
4. In **Server Hub**, enter your fork URL into the *Client Data Repository* field.
5. SRO:SB will automatically fetch and update client files for your players.

---

## File Structure

---

## License

This repository is **free to use for both personal and commercial purposes**.  
Each server must maintain its own fork and be responsible for the data shared.

---

# SRO:SB - Client Data Reposu

Bu repo, **Silkroad Online Server Browser (SRO:SB)** için kullanılan **referans client verilerini** içerir.  
SRO:SB, birden fazla sunucuyla çalıştığı için temel client dosyaları parçalanarak burada tutulur.  

Sunucu sahipleri bu repoyu **forklayarak** kendi özel client dosyalarını yükler.  
Böylece SRO:SB, her sunucuya özgü verileri oyunculara indirterek uyum sağlar.

---

## SRO:SB Projesinin Bileşenleri

1. **[SRO:SB - Oyun Tarayıcısı](https://github.com/your_org/srosb-main)**  
   Oyuncuların sunucuları keşfettiği ve Gateway aracılığıyla bağlandığı ana launcher.

2. **[SRO:SB - Server Hub](https://github.com/your_org/srosb-serverhub)**  
   Sunucu sahiplerinin sunucularını tanıtabildiği ve yapılandırabildiği yönetim paneli.

3. **SRO:SB - Client Data** (Bu repository)  
   Her sunucu tarafından fork’lanarak kullanılan referans veritabanı.  
   Sunucuya özel client dosyaları buradan güncellenir.

---

## Nasıl Kullanılır? (Sunucu Sahipleri)

1. Bu repoyu **fork**’layın.
2. Kendi client dosyalarınızı `splitter_data.exe` veya `splitter_data.py` ile parçalayın.
3. Çıkan parçalanmış dosyaları fork’unuza yükleyin.
4. Server Hub üzerinden *Client Data Repository* alanına kendi fork linkinizi girin.
5. Oyuncular client dosyalarını otomatik olarak indirir ve güncellenmiş olarak sunucunuza bağlanabilir.

---

## Dosya Yapısı
---

## Lisans

Bu repo **kişisel ve ticari amaçlarla ücretsiz olarak** kullanılabilir.  
Her sunucu sahibi kendi fork’unu yönetmekten sorumludur.

---