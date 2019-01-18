User.create!(email: "phambadat.97@gmail.com",
              password: "12071997",
              name: "Pham Ba Dat",
              gender: "nam",
              date_of_birth: "12/07/1997",
              address: "02 ha khe",
              phone: "0368443565",
              avatar: "dat.jpg",
              role: 1)

User.create!(email: "thuan.nguyenvan0501.work@gmail.com",
              password: "123456",
              name: "Nguyen Van Thuan",
              gender: "nam",
              date_of_birth: "05/01/1997",
              address: "19 phu xuan 2",
              phone: "0255674554",
              avatar: "thuan.jpg",
              role: 1)

Category.create!(name: "trong nuoc")
Category.create!(name: "ngoai nuoc")

Hotel.create!(name: "novotel",
              address: "56 bach dang",
              image: "no.jpg")

Tour.create!(name: "da nang - hoi an",
             price: "1000000",
             start_tour: "20/01/2018",
             end_tour: "21/01/2018",
             start_palace: "da nang",
             end_palace: "hoi an",
             category_id: 1,
             route: "di qua bien cua dai roi den hoi an",
             transport: "xe bus 56 cho",
             quantity: 46)

BookTour.create!(user_id: User.first.id,
                  tour_id: Tour.first.id,
                  quantity: 2,
                  price: 1000000,
                  note: "da thanh toan")

Rating.create!(rating: 7,
               user_id: 1,
               tour_id: 1)
