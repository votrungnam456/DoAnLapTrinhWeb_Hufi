CREATE DATABASE QL_DSSP
USE QL_DSSP


CREATE TABLE SANPHAM
(
	ID INT PRIMARY KEY IDENTITY,
	LOAISP CHAR(10),
	TENSP NVARCHAR(100),
	MOTA1 NVARCHAR(max),
	MOTA2 NVARCHAR(max),
	HINHANHVP NVARCHAR(50),
	GIACA int,
	SOLUONG INT,
	NGAYNHAP DATE
	
)

create table tintuc
(
	id INT PRIMARY KEY IDENTITY,
	loaitintuc nvarchar(max),
	tieude nvarchar(max),
	thongtin nvarchar(max),
	hinhanh nvarchar(255),
	link varchar(255),
)

set dateformat dmy
INSERT INTO SANPHAM
VALUES
('VP',N'Văn phòng hiện đại nhỏ dưới 100m2',N'Văn phòng của công ty Merita là đặc trưng thiết kế sáng tạo '
,N'Không gian văn phòng nhỏ những vẫn đảm bảo tính hiện đại,sáng tạo','img/hinh1vp.jpg',1000000000,1,'12/4/2019'),

('VP',N'Văn phòng hiện đại tầm trung 100-500m2',N'Với những thiết kế văn phòng kiểu này ,việc bố trí các không gian làm việc ,khu pantry ,phòng họp ... dễ dàng hơn',
N'Văn phòng được thiết kế theo mô hình Co-working space với diện tích 310m2 hội đủ các yếu tố đơn giản ,hiên đại và mang đậm màu sắc','img/hinh2vp.jpg',160000000,1,'25/4/2020'),

('VP',N'Văn Phòng Làm việc',N'Văn phòng là một không gian làm việc thoải mái,dễ chịu giúp nhân viên sáng tạo hơn'
,N'Bàn làm việc nhân viên được phân thành nhiều khu vực với những dãy bàn dài. Văn phòng làm việc cũng được bố trí những chỗ ngồi để tiếp khách','img/hinh3vp.jpg',10000000,1,'15/7/2020'),

('PK',N'Phòng khách đẹp có cầu thang',N'Thiết kế nội thất phòng khách đẹp có cầu thang mang lại sự sang trọng và tinh tế. Nó không chỉ tiết kiệm không gian phòng khách mà còn trở thành một điểm trang trí nghệ thuật cho căn phòng nhà bạn.'
,N'Thay vì những chiếc cầu thang bằng bê tông nguyên khối, những chiếc cầu thang hiện đại với thiết kế thanh mảnh, gọn nhẹ sẽ tiết kiệm được diện tích cho căn phòng nhà bạn. Không những thế, nó sẽ phát huy được tiện ích mà nó mang lại.','img/hinh1pk.jpg',15000000,1,'12/12/2019'),

('PK',N'Phòng khách hiện đại nhà ống đẹp',N'Phòng khách vừa hiện đại, tinh tế lại tiết kiệm được diện tích và không gian tươi mới, khẳng định được cá tính của chủ gia đình.'
,N'Mẫu phòng khách hiện đại này được thiết kế khá đơn giản, cách bài trí không gian phân chia rõ ràng, từ ngoài đi vào là diện tích phòng khách với cách kết hợp sofa màu xám cùng với tone màu sơn tường ấm tạo hiệu ứng nhẹ nhàng, thanh thoát.','img/hinh2pk.jpg',200000000,1,'12/6/2020'),

('PK',N'Phòng khách, bếp chung một không gian',N'Mẫu phòng khách hiện đại này là một trong những căn phòng khách được yêu thích nhất hiện nay.'
,N'Cách kết hợp các không gian chia tách đơn giản bằng việc tạo tầng cho căn phòng, đồng thời kết hợp cây xanh, ánh sáng, màu sắc tối giản… đã giúp căn nhà trở nên độc đáo hơn và cá tính hơn.','img/hinh3pk.jpg',1230000000,1,'20/10/2019'),

('PN',N'Phòng ngủ nhỏ 5m2',N'Với diện tích khá nhỏ chỉ có 5m2 nhưng không gian phòng ngủ này vẫn tạo cho gia chủ có được cảm giác rộng rãi,thoải mái nhờ cách bố trí các vật dụng trong căn phòng',
 N'Với không gian phòng ngủ ở các căn hộ chung cư nhỏ hẹp chỉ tầm 5m2 nên kiến trúc sư phải tận dụng hết toàn bộ không gian để bố trí những vật dụng nội thất cần thiết.','img/hinh1pn.jpg',10000000,1,'15/8/2019'),

('PN',N'Phòng ngủ nhỏ 6m2',N'Bố trí nội thất phòng ngủ đơn giản,Phòng ngủ sử dụng giường bục có hộc kéo ',N'Phòng ngủ nhỏ cần tận dụng diện tích tối đa để bố trí nội thất, giúp căn phòng thêm gọn gàng hơn. Lượt bớt những nội thất không liên quan để giúp căn phòng có được độ thông thoáng cần thiết.','img/hinh2pn.jpg',70000000,1,'25/5/2020'),

('PN',N'Phòng ngủ diện tích 7m2 hiện đại',N'Trang trí phòng ngủ với tranh nghệ thuật hiện đại',N'Căn phòng khá nhỏ nhắn nhưng nhờ có sự bố trí hợp lý đã làm cho không gian này trở nên thoáng đãng hơn','img/hinh3pn.jpg',80000000,1,'28/6/2018'),


('PS',N'Phòng đọc sách tại nhà',N'Góc đọc sách tại nhà là một ý tưởng hoàn hảo cho những bạn có nhu cầu đọc sách mỗi ngày và yêu thích không gian riêng tư,
  không đông người để tránh bị làm phiền hay phân tâm',N'Điều quan trọng nhất khi thiết kế phòng đọc sách đó là phải có chỗ ngồi thoải mái, bạn có thể chọn cho mình chiếc sofa đơn, hay sofa văng, sofa đọc sách chuyên dụng,Yếu tố thứ 2 đó là ánh sáng','img/hinh1ps.jpg',100000000,1,'1/9/2019'),

('PS',N'Phòng đọc sách cao cấp',N'mẫu thiết kế phòng đọc sách cao cấp là một nơi tuyệt vời khi bạn đọc sách',
N'Nếu bạn có viết lách thì bạn sẽ cần thêm một bộ bàn ghế tương tự loại bàn ghế làm việc trong phòng đọc sách để phục vụ công việc, loại ghế phù hợp nhất là loại có tựa lưng cao để tránh mỏi lưng và cổ. ','img/hinh2ps.jpg',500000000,1,'20/7/2020'),

('PS',N'Phòng đọc sách gia đình',N'Giúp cả gia đình bên nhau vào nhưng ngày cuối tuần',N'Đối với những căn hộ, biệt thự rộng rãi nhiều phòng ốc, gia chủ có thể dành cả một căn phòng lớn để thiết kế phòng đọc sách, thư viện gia đình. Một căn phòng lớn có thể bố trí hệ giá sách đồ sộ và thêm cả bàn ghế làm việc rộng rãi thoải mái.','img/hinh3ps.jpg',600000000,1,'20/7/2020'),




('NV',N'Mẫu nhà vườn cấp 4',N'Thiết kế nhà theo dạng kiến trúc mở, kiến trúc sư đưa ra ý tưởng thiết kế trần mái và sàn nhà màu gỗ tương đồng',
N'Mặt tiền của mỗi ngôi nhà nhỏ đều được bố trí khá nhiều cửa kính,
với kiểu cửa mở trượt nên khá thuận tiện cho việc sử dụng.
 ','img/hinh1nv.jpg',100000000,1,'1/2/2020'),


('NV',N'Biệt thự vườn 1 tầng',N'Đặc điểm chung của các mẫu nhà 1 tầng này chính là khoác lên mình 1 kiểu dáng kiến trúc mái thái.',N'Cùng là lối kiến trúc mái thái nhưng hình dáng cũng như hình thức của các căn nhà là khác nhau. Không chỉ thế mà màu sắc, cách phối màu trong những căn nhà 1 tầng này cũng rất quan trọng, nó quyết định tới vấn đề thẩm mỹ của căn nhà','img/hinh2nv.jpg',500000000,1,'1/10/2019'),

('NV',N'Biệt thự vườn 2 tầng',N'MẪU BIỆT THỰ ĐẸP 2 TẦNG NHÀ VƯỜN 10X15M Mẫu biệt thự đẹp 2 tầng nhà vườn 10x15m.',
N' Mẫu nhà vườn đẹp 2 tầng được tạo hình với các mảng khối, 
chi tiết ngoại thất một cách đơn giản. Cùng với đó là các vật liệu sử dụng như đá ốp tường trang trí. ','img/hinh3nv.jpg',800000000,1,'8/6/2020'),




('SOFA',N'Mẫu sofa góc chữ L ',N'Sofa nệm chữ L hay còn gọi là sofa góc có thiết kế đẹp mắt, chúng phù hợp với phòng khách chung cư có diện tích vừa.',
N'Sofa chữ L được làm từ khung gỗ tự nhiên, có thể là gỗ sồi, gỗ tần bì, xoan đào hay gỗ dầu tùy theo giá tiền.
 Vật liệu cấu tạo sofa thứ 2 không thể thiếu là nệm mút','img/hinh1sf.jpg',2000000,1,'30/8/2020'),

('SOFA',N' Sofa nệm hình chữ I ',N'Nếu sofa chữ L thu hút người nhìn bởi sự tinh tế, độc đáo thì mẫu sofa chữ I lại hấp dẫn người xem bởi sự nhẹ nhàng, trang nhã.',N'Sofa chữ L phù hợp hơn với phòng khách có diện tích vừa và hơi rộng. Riêng với kiểu chữ I, mẫu này được thiết kế và sản xuất ra để dành riêng cho phòng khách chung cư nhỏ hẹp.','img/hinh2sf.jpg',5500000,1,'30/8/2019'),

('SOFA',N'Mẫu sofa lớn ôm trọn góc',N'Có thiết kế giống với mẫu sofa nệm chữ L, tuy nhiên, sofa này được làm thành vòng cung mềm mại để ôm trọn bàn nước',N'Mãu này thích hợp cho phòng khách chung cư diện tích lớn. Chúng vừa tạo ra sự hài hòa, vừa lấp trống diện tích, vừa tạo ra tính thẩm mỹ cao nhất cho căn phòng.','img/hinh3sf.jpg',10000000,3,'10/3/2020'),




('TB',N'Tủ bếp hiện đại Acrylic bóng gương',N'Trong các loại tủ bếp hiện đại thì tủ bếp acrylic bóng gương được yêu thích hơn cả.
', N'Sản phẩm tủ bếp acrylic còn có đến hơn 50 màu sắc khác nhau, từ màu trơn đến những màu vân gỗ sang trọng giúp bạn chọn được màu sắc thích hợp nhất với không gian bếp và sở thích của mình.','img/hinh1tb.jpg',12300000,4,'15/8/2019'),

('TB',N'Tủ bếp hiện đại Laminate màu giả vân gỗ',N'Sản phẩm tủ bếp lamiante thiết kế hiện đại mang đặc trưng bề mặt sần chống trầy cực tốt và đa dạng về màu sắc vân gỗ để bạn lựa chọn.',N'Tủ bếp Laminate hiện đại có khả năng chịu lực, chịu nhiệt và chống ẩm tốt. Và khả năng chống trầy xước cực cao giúp giữ được tính thẩm mỹ cao nhất cho sản phẩm. Đặc biệt, có rất nhiều màu sắc laminate để bạn lựa chọn','img/hinh2tb.jpg',15600000,2,'5/5/2020'),

('TB',N'Tủ bếp hiện đại Veneer',N'Tủ bếp bằng chất liệu gỗ veneer hiện đại được tạo nên từ code gỗ công nghiệp MDF lõi xanh phủ bề mặt Veneer.',N'Đây là loại tủ bếp thích hợp với những đường vân gỗ đẹp nhưng lại ghét những chi tiết rườm rà của tủ bếp gỗ tự nhiên. Đặc biệt, loại tủ bếp này có giá vô cùng phải chăng. Nhưng độ bền của nó lại thấp hơn so với cả acrylic và laminate.','img/hinh3tb.jpg',22300000,3,'23/12/2019'),

('GIUONG',N'Giường tầng',N'Giường tầng giúp cho gia đình tiết kiệm diện tích hơn',N'KÍCH THƯỚC:Rộng 150 x Dài 205 x Cao 175 (cm)
NỆM TẦNG TRÊN:100 x 195 x 9+ (cm)
NỆM TẦNG DƯỚI:140 x 190 x 9+ (cm)
CHẤT LIỆU:Gỗ thông New Zealand
SẢN XUẤT TẠI:Việt Nam
CHẾ ĐỘ BH:24 tháng','img/hinh1g.jpg',4400000,5,'10/3/2020'),

('GIUONG',N'Giường hơi hình thú cao cấp',N'GIƯỜNG HƠI HÌNH THÚ CAO CẤP 3 tầng là giải pháp tối ưu nhất giúp bạn có thể thỏa mãn được mong muốn có chỗ nghỉ tiện nghi cho cả gia đình.',
N'nệm hơi tích hợp gối phần đầu giường, bơm điện bên trong, bề mặt phủ nhung bền màu, không bị xô khi nằm, tạo cảm giác thoải mái nhất khi ngủ. Chỉ cần bật công tắc trong 3 phút. có kèm bơm điện','img/hinh2g.jpg',1000000,6,'10/3/2020'),

('GIUONG',N'Giường ngủ Pallet gỗ thông',N'Giúp bạn có một giấc ngủ ngon sau một ngày dài làm việc mệt mỏi',N'Kích thước :1m2,1m4,1m6,1m8,2m,2m2 x2m 
Màu sắc :  Vàng gỗ tự nhiên
Chất liệu :  Được làm từ gỗ thông tự nhiên nhập khẩu Newzealand 
Xuất xứ : Việt Nam ','img/hinh3g.jpg',2000000,4,'2/2/2020'),



('DENTT',N'Đèn Thả',N'Mẫu đèn thả rọ sắt trang trí nhiều kiểu dáng',N'Mẫu đèn thả rọ sắt trang trí nhiều kiểu dáng này trông khá nghệ thuật ở bên ngoài. Thường sử dụng loại bóng đèn Edison màu sắc ánh sáng vàng đẹp ấm cúng tôn lên vẻ đẹp tự nhiên cho không gian trang trí của bạn.
','img/hinh1den.jpg',75000,8,'22/11/2019'),

('DENTT',N'Đèn rọi ray 12W SMD',N'Đèn rọi ray 12W SMD mắt trâu các loại vỏ trắng vỏ đen ánh sáng trắng ánh sáng vàng',
N'Thông tin sản phẩm :Chất liệu : Vỏ thép, Sơn tĩnh điện chống han gỉ,Kích thước : Đường kính 10cm, Dài 15cm,Công suất : 12W,Điện áp : AC85 - 265V / 50 - 60Hz,Thời gian chiếu sáng : >50000h','img/hinh2den.jpg',100000,10,'1/3/2020'),

('DENTT',N'Đèn gỗ thả trần hoa cúc',N'Đèn gỗ thả trần hoa cúc là một sản phẩm rất tâm đắc của Đèn Gỗ Trang Trí Hà Nội. Đèn được thiết kế để sử dụng ở nhiều không gian khác nhau như:trang trí phòng khách, nhà hàng...'
,N'Thông số kỹ thuật Đèn gỗ treo tường, thả trần hoa cúc 
Chất liệu: gỗ veneer
Nguồn điện: 220v
Công suất: 5w
Màu ánh sáng: trắng, vàng, đổi màu
Kích thước: 650 x 650 x 200mm','img/hinh3den.jpg',450000,5,'12/4/2019'),


('BANAN',N'Bàn ăn thông minh thương hiệu IGEAD',N'Sản phẩm thân thiện với môi trường,Sản phẩm đạt tiêu Chuẩn xuất khẩu, đóng gói theo chuẩn xuất khẩu.',
N'Chất liệu: Bằng gỗ MDF nhập khẩu Malaysia được phủ Melamine chống thấm,Đã qua xử lý chống cong vênh, mối mọt.Mặt bàn có khả năng chống thấm nước.','img/hinh1ban.jpg',1350000,5,'3/10/2019'),

('BANAN',N'Bàn ăn giả đá 4 ghế',N'Bộ Bàn ăn mặt giả đá 1m2 + 4 ghế',N'Chất liệu: Gỗ cao su xuất khẩu, mặt bàn MDF được phủ 1 lớp PVC giả đá làm tăng độ sáng bóng và tính thẩm mỹ của sản phẩm,Size 1200*750*750,1 bộ  gồm:  4 ghế  và 1 bàn dài 1m2','img/hinh2ban.jpg',2250000,3,'3/10/2019'),

('BANAN',N'Bộ Bàn Ghế Cabin  ',N'Bộ bàn ghế CABIN từ Nội Thất Xanh có thiết kế trang nhã, hiện đại, được sản xuất từ chất liệu gỗ cao su chất lượng cao. Mang đến cho bạn không gian phòng ăn hiện đại, sang trọng.',
N'Bàn có 2 kích thước: 115 x 70 x 74 và 165 x 80 x 74 (cm).Mặt bàn có 2 loại: 
Mặt MDF veneer 2 mặt, diềm gỗ cao su: Màu sắc đa dạng, mặt MDF có độ bền cao, khả năng chống nước. Bề mặt veneer nhẵn mịn, có khả năng chống bám bụi, dễ dàng vệ sinh, lau chùi.','img/hinh3ban.jpg',1200000,4,'1/2/2020'),


('REMCUA',N'Rèm cửa chống nắng',N'Rèm cửa chống nắng 96%, cực đẹp, giá cực rẻ',
N'Vải gấm chống nắng 96%, chống tia Uv hoàn toàn.Vải mềm, mịn, dày, lên sóng đẹp.Chống bám bụi, an toàn với sức khỏe người sử dụng.Không phai màu, độ bền sản phẩm từ 7 đến 10 năm tùy theo điều kiện xử dụng.','img/hinh1rem.jpg',300000,5,'12/4/2020'),

('REMCUA',N'Rèm cửa cao cấp ( vải dày)',N'Rèm cửa cao cấp in họa tiết với chất liệu vải sợi dày, dùng làm màn cửa chính, cửa sổ hoặc che nắng....',N'Thông tin chi tiết:Kích thước: rộng 1m x 2.7m, rộng 2m x2.7m, rộng 3m x 2.7m, rộng 4m x 2.7m.Kích thước duỗi thẳng k tính độ nhún. Giá bán rèm vải không bao gồm lớp voan.Sản phẩm có thể giặt rửa thoải mái không xù lông, bay màu.','img/hinh2rem.jpg',875000,2,'12/4/2020'),

('REMCUA',N'Rèm cửa trang trí',N'Rèm treo cửa sổ - Rèm voan lưới cao cấp, Khổ rộng 1m7, các màu.',
N'Rèm cửa Nhật Bản Hanamu có những tính năng nổi bật sau:Chất liệu polyester 100% bền, chắc.Chống muỗi và côn trùng hiệu quả giúp bảo vệ sức khỏe của bạn và gia đình.Rèm mỏng, nhẹ, tháo lắp dễ dàng','img/hinh3rem.jpg',331000,2,'12/4/2020')




insert into tintuc
values(N'TTH',N'Lựa chọn sàn gỗ xương cá đúng gu cho nhà phố',
N'Hiện nay, sàn gỗ xương cá được xem là kiểu thiết kế độc đáo cho nhà phố. Xu hướng lát sàn xương cá đang là cảm hứng phá cách cho nhiều không gian, phá bỏ những rào cản về sáng tạo, tạo nên làn sóng mới cho người dùng tại Việt Nam.','img/hinh1tt.jpg','http://giadinh.net.vn/thi-truong/lua-chon-san-go-xuong-ca-dung-gu-cho-nha-pho-20200720123434764.htm')
insert into tintuc
values(N'TTH',N'Bạn sẽ tiếc nếu bỏ qua 10 cách lưu trữ cực thông minh này để nhà bếp luôn gọn đẹp',
N'Gian bếp là nơi chứa đựng vô vàn nguyên liệu, dụng cụ lớn nhỏ; vì vậy, khi thiết kế nội thất yếu tố lưu trữ thông minh luôn được đặt lên hàng đầu nhằm tiết kiệm diện tích, đem lại một không gian ngăn nắp và tiện nghi cho bạn.','img/hinh2tt.jpg','http://giadinh.net.vn/o/ban-se-tiec-neu-bo-qua-10-cach-luu-tru-cuc-thong-minh-nay-de-nha-bep-luon-gon-dep-20200309103346645.htm')
insert into tintuc
values(N'TTH',N'Phòng ngủ sáng tạo khiến cả bé và bố mẹ đều mê',
N'Những mẫu phòng ngủ trẻ em sáng tạo dưới đây có thể là mẫu phòng mà cả bạn và những đứa trẻ trong nhà đang tìm kiếm.','img/hinh3tt.jpg','http://giadinh.net.vn/o/hy-sinh-do-dac-de-co-can-ho-trong-mo-20200208115924506.htm')
insert into tintuc
values(N'TTH',N'Căn bếp đen - trắng vừa đẹp vừa sang lại luôn gọn gàng ngăn nắp',
N'Dường như có quá nhiều lý do khiến bạn chẳng thể bỏ qua lựa chọn một căn bếp với gam màu chủ đạo đen - trắng cho ngôi nhà của mình.','img/hinh4tt.jpg','http://giadinh.net.vn/o/can-bep-den-trang-vua-dep-vua-sang-lai-luon-gon-gang-ngan-nap-20200114145022498.htm')
insert into tintuc
values(N'TTH',N'Khoác áo mới cho phòng khách đón hè',
N'Những màu sắc từ mùa đông sang mùa xuân như thảm lông, gối ôm… đã không còn phù hợp với không khí mùa hè. Tuy nhiên bạn không cần thay đổi hoàn toàn đồ nội thất trong phòng khách của mình, vì chỉ với vài bước đơn giản dưới đây, bạn đã có thể “khoác áo mới” cho phòng khách.','img/hinh5tt.jpg','http://giadinh.net.vn/o/khoac-ao-moi-cho-phong-khach-don-he-20160510155117403.htm')
insert into tintuc
values(N'TTH',N'Thiết kế nội thất cho căn hộ chung cư 29m2',
N'Với diện tích bé, căn hộ chung cư 29 m2 đã sử dụng các giải pháp thiết kế thông minh và khéo léo như sàn gỗ cứng màu trắng và nội thất tối giản.','img/hinh6tt.jpg','http://giadinh.net.vn/o/thiet-ke-noi-that-cho-can-ho-chung-cu-29m2-20150710103731008.htm')

