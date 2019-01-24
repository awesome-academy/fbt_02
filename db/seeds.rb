User.create!(email: "phambadat.97@gmail.com",
              password: "12071997",
              password_confirmation: "12071997",
              name: "Pham Ba Dat",
              gender: "nam",
              date_of_birth: "12/07/1997",
              address: "02 ha khe",
              phone: "0368443565",
              avatar: "dat.jpg",
              role: 1)

User.create!(email: "thuan.nguyenvan0501.work@gmail.com",
              password: "123456",
              password_confirmation: "123456",
              name: "Nguyen Van Thuan",
              gender: "nam",
              date_of_birth: "05/01/1997",
              address: "19 phu xuan 2",
              phone: "0255674554",
              avatar: "thuan.jpg",
              role: 1)

Category.create!(name: "Domestic")
Category.create!(name: "Foreign")

Hotel.create!(name: "novotel",
              address: "56 bach dang",
              image: "no.jpg")

Tour.create!(name: "da nang - hoi an",
             price: "100",
             start_tour: "20/12/2018",
             end_tour: "21/12/2018",
             start_palace: "da nang",
             end_palace: "hoi an",
             category_id: 1,
             route: "di qua bien cua dai roi den hoi an",
             transport: "xe bus 56 cho",
             quantity: 46,
             image:"images/hoian.jpg")

Tour.create!(name: "viet nam - korea ",
             price: "1000",
             start_tour: "22/01/2018",
             end_tour: "27/01/2018",
             start_palace: "Viet Nam",
             end_palace: "Korea",
             category_id: 2,
             route: "let go",
             transport: "may bay",
             quantity: 46,
             image:"images/korea.jpg")

Tour.create!(name: "da nang - hue",
             price: "100",
             start_tour: "10/01/2019",
             end_tour: "23/01/2018",
             start_palace: "da nang",
             end_palace: "hue",
             category_id: 1,
             route: "bat dau tu ga da nang den ga hue va tham quan.
               sau do khach hanh khach se duoc di vao cung thanh hue",
             transport: "tau hoa",
             quantity: 50,
             image:"images/hue.jpg")

Tour.create!(name: "da nang - ha noi ",
             price: "300",
             start_tour: "21/2/2019",
             end_tour: "25/2/2019",
             start_palace: "da nang",
             end_palace: "ha noi",
             category_id: 1,
             route: "di bang may bay va den san bay noi bai",
             transport: "may bay",
             quantity: 47,
             image:"images/hanoi.jpg")

Tour.create!(name: "viet nam - thailans ",
             price: "750",
             start_tour: "01/03/2019",
             end_tour: "07/03/2019",
             start_palace: "Viet Nam",
             end_palace: "Thailans",
             category_id: 2,
             route: "let go",
             transport: "may bay",
             quantity: 46,
             image:"images/thailan.jpg")

Tour.create!(name: "viet nam - laos ",
             price: "500",
             start_tour: "22/01/2019",
             end_tour: "23/01/2019",
             start_palace: "Viet Nam",
             end_palace: "Laos",
             category_id: 2,
             route: "let go",
             transport: "may bay",
             quantity: 46,
             image:"images/lao.jpg")

Tour.create!(name: "da nang - bana hill",
             price: "80",
             start_tour: "12/02/2019",
             end_tour: "12/02/2019",
             start_palace: "Da nang",
             end_palace: "Bana hill",
             category_id: 1,
             route: "duong len tien canh ba na hill",
             transport: "xe bus",
             quantity: 46,
             image:"images/bana.jpg")

Tour.create!(name: "da nang - lagura",
             price: "200",
             start_tour: "22/01/2018",
             end_tour: "23/01/2018",
             start_palace: "Da Nang",
             end_palace: "Lagura-Hue",
             category_id: 1,
             route: "khu nghi duong cao cap gan bai bien",
             transport: "xe bus",
             quantity: 46,
             image:"images/laguna.jpg")

Tour.create!(name: "viet nam - singapore",
             price: "1000",
             start_tour: "22/01/2018",
             end_tour: "23/01/2018",
             start_palace: "Viet Nam",
             end_palace: "Singapore",
             category_id: 2,
             route: "let go",
             transport: "may bay",
             quantity: 46,
             image:"images/singapo.jpg")

Tour.create!(name: "viet nam - janpan",
             price: "1000",
             start_tour: "08/01/2019",
             end_tour: "14/01/2019",
             start_palace: "Viet Nam",
             end_palace: "Janpan",
             category_id: 1,
             route: "let go",
             transport: "may bay",
             quantity: 46,
             image:"images/janpan.jpg")

Tour.create!(name: "da nang - phu yen",
             price: "150",
             start_tour: "18/02/2019",
             end_tour: "21/02/2019",
             start_palace: "Da nang",
             end_palace: "Phu yen",
             category_id: 1,
             route: "di bang duong bien tan huong cuoc song",
             transport: "tau thuy",
             quantity: 46,
             image:"images/phuyen.jpg")

Tour.create!(name: "viet nam - dai loan ",
             price: "1000",
             start_tour: "22/01/2018",
             end_tour: "23/01/2018",
             start_palace: "Viet Nam",
             end_palace: "Dai Loan",
             category_id: 2,
             route: "let go",
             transport: "may bay",
             quantity: 46,
             image:"images/dailoan.jpg")

BookTour.create!(user_id: User.first.id,
                  tour_id: Tour.first.id,
                  quantity: 2,
                  price: 1000000,
                  note: "da thanh toan")

Rating.create!(rating: 7,
               user_id: 1,
               tour_id: 1)
