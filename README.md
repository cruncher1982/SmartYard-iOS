# Теледом  iOS
Версия с нейтральным брендом и экраном выбора оператора. 
Идеально подходит тем, кто не хочет возиться с публикацией своего собственного приложения.

## История проекта
Это приложение, которое было изначально заказано операторм связи [LanTa](https://www.lanta-net.ru) (г. Тамбов) у студии мобильной разработки [MadBrains](https://madbrains.ru/) (г. Ульяновск) в 2020 году для проекта умных домофонов. Это изначально был MVP, который умел принимать видеозвонки с IP домофонов Beward, открывать двери, калитки, шлагбаумы, принимать оплату от клиентов, подтверждать доступ пользователя к адресу, оставлять заявки на подключение, отображать камеры видеонаблюлюдения с архивом, получать и отображать текстовые уведомления, вести чат с оператором, управлять настройками домофона и управлять доступами для других жителей квартиры.
Позже мы стали развивать этот проект своими силами и дополнять его дополнительными фичами. Мы добавили: видовые камеры, журнал событий, настройки функции распознавания лиц, интеграцию с Siri, Быстрыми командами, а также исправляли баги, которые за время работы то там, то тут всплывали.

В октябре 2021 года мы созрели для того, чтобы открыть исходные коды нашего проекта и предлгаем всем, кто заинтересован в построении аналогичных сервисов не "изобретать свой велосипед" с нуля, а вместе с нами развивать данный проект, обмениваясь идеями и наработками. На этот момент приложением пользуется около 15 тысяч пользователей, живущих в домах оборудованных домофонными панелями и системами видеонаблюдения от нашей компании.

В сентябре 2022 года мы решили сделать OEM-версию приложения "Теледом" для операторов, которым хочется сразу попробовать приложение в деле, прежде чем принимать решение о публикации собственного приложения на маркетах.

## Возможности приложения
* Две категории набора прав пользователей: владелец и житель. Владелец у квартиры может отсутствовать или быть только один - это лицо кому принадлежит лицевой счёт квартиры. Владелец может добавлять и удалять из квартиры жителей. Житель может удалить только себя из квартиры.
* Добавление владельцев в квартиры происходит через административный интерфейс оператора после заключения договора. Также доступно добавление по номеру догвора и паролю от уже заключенного договора на услуги(интернет или тв) оператора по этому адресу. Если до этого у квартиры был владелец - новый его права забирает себе.
* Добавление жителей в квартиру возможно через: добавление владельцем из настроек доступа в приложении, через сканирование QR-кода квартиры приложении, либо сотрудником Оператора по предъявлению доказательств проживания в квартире (прописка или свежая квитанция за коммунальные услуги от этой квартиры)
* В приложении для добавления нового адреса пользователь указывает его, затем система проверяет доступные услуги по этому адресу и если пользователю требуется заключить договор на интернет/тв/телефон, то приложение создаёт нам заявку на подключение и мы приподключении подтверждаем его адрес и добавляем пользователя. Если же пользователю надо только подтвержить свою принадлежность к адресу для домофона, то мы формируем заяву на достаку персонального QR-кода его квартиры в его почтовый ящик.
* Каждый пользователь может быть привязан к нескольким разным квартирам - в приложении будут отображаться все его квартиры с соответствующим набором прав.
* Приложение принимает входящие вызовы от домофонов, если это не выключено в настройках приложения для этого адреса. 
* Экран входящего выхова поддерживает альбомную и портретную ориентацию телефона.
* Есть переключение между динаминками телефона, при поднесению телефона к уху динамик переключается автоматически.
* При поступлении входящего вызова приложение позволяет видеть изображение звонящего до ответа на вызов.
* Поддерживаются два режима доставки входящих вызовов: через Push-Notification (как видео-звонок в WhatsApp) и через VoIP-Push+CallKit (как аудио-звонок в WhatsApp)
* До ответа на звонок доступен видео-глазок, который запускает слайд-шоу с камеры домофона (частота кадров от скорости интернет зависит, но в среднем 2-3 кадра в секунду)
* После ответа на вызов изображение и звук переключаются на SIP медиа-потоки
* Для каждого адреса есть возможность отображать журнал событий с видео или изображениями в момент события.
* Для квартиры можно менять код для входа, включить автоматичское открывание на час (режим "Жду гостей"), поделиться временным доступом к воротам-шлагбауму (через звонок на специальный номер телефона)
* Если на адресе есть камеры видеонаблюдения, то доступна карта с их расположением, с возможностью посмотреть картинку в онлайн или из архива.
* При просмотре видеокамер поддерживается масштабирование изображение жестом pinch, корректно обрабатываются пропуски в архиве если они есть и подгружается информация о всех доступных интервалах в архиве.
* В архиве видеозаписей возможен выбор фрагмента с последующим получением ссылки на его скачивание в уведомлении.
* На вкладке уведомлений отображается Web-View, в котором отображается история уведомлений для пользователя. Получаемые уведомления приходят в виде Push-Notifications
* На вкладке Чат - также готовый компонент на базе Web-View от me-Talk (такой же как используется на нашем основном сайте)
* На вкладке Оплатить - доступны все лицевые счета, которые привязаны к этому пользователю, с отображением баланса, возможностью оплаты через ApplePay и ссылкой на личный кабинет.
* В меню Городские камеры доступны трансляции с публичных камер, а также возможностью отправить нам запрос на получение записи из архива этих камер (прямой доступ к архиву недоступен из приложения).
* В меню Настройки Адресов по каждому адресу можно управлять доступом, менять коды и настраивать режимы работы домофона под себя.
* В меню Общие настройки настраивается способ доставки звонков (CallKit - не CallKit), а также параметры уведомлений.
* Приложение имеет виджет для экрана Today, а также интеграцию с Shortcuts и Siri
* Если для домофона включена поддержка распознавания лиц, то приложение позволяет пользователям управлять возможностью открывать дверь по лицу. Жители могут добавлять и удалять свои лица через журнал событий или меню настроек адреса. Владелец помимо этого может удалять лица других пользователей из своей квартиры.
* Выбор оператора из списка при первом запуске приложения.
* Поддержка темного режима приложения.

## API
Приложение использует наше собственное API. [(ссылка на API)](https://rosteleset.github.io/ApplicationAPI/)
Исходный код back-end, реализующий API, на текущий момент неотделим от нашей архитектуры и от всех остальных наших систем, поэтому на текущем этапе мы не можем вам предложить ничего лучше, как реализовать у себя это API своими силами. 
В описании API есть пример того, как делается интеграция между Asterisk и мобильным приложением на примере Liphhone. Для понимания принципов построения системы это будет также полезно изучить.

## Используемые фреймворки и компоненты (основные)
* [CocoaPods](https://cocoapods.org/) для управления используемыми фреймворками
* [linphone-sdk](https://github.com/BelledonneCommunications/linphone-iphone) для реализации SIP части
* [Flussonic](https://flussonic.ru/) для работы с архивом видеокамер 
* [Firebase Cloud Messaging](https://firebase.google.com/docs/cloud-messaging) для работы с Push-уведомлениями
* [MapBox](https://www.mapbox.com/) для работы с картами [(обязательно нужно на их сайте зарегистрироваться, чтобы получить токен для работы с API и для установки)](https://docs.mapbox.com/ios/maps/guides/install/)
* [Crashlytics](https://firebase.google.com/docs/crashlytics) для сбора информации о сбоях 
* [Yandex AppMetrika](https://appmetrica.yandex.ru/) для сбора пользовательской аналитики
* Реактивный фреймворк [RxSwift](https://github.com/ReactiveX/RxSwift) и
* [XCoordinator](https://github.com/quickbirdstudios/XCoordinator) для реализации архитектуры MVVM+Coordinator
* Фреймворк [Moya Swift](https://github.com/Moya/Moya) для удобной работы с REST API
* Онлайн чат [talk-me](https://talk-me.ru/) для чата с пользователями.

## Дизайн
Возможно, вам также может понадобиться что-то поменять в дизайне приложения, или в коде вы увидите ссылки на номера экранов, тогда наши [макеты экранов приложения в Figma](https://www.figma.com/file/bGLlEJbu8mVWY7gg4P0Hs2/%D0%9B%D0%B0%D0%BD%D1%82%D0%B0-App-(iOS%2BAndroid)-(Public-copy)?node-id=1377%3A0) могут быть полезны.

## Скриншоты
<p float="left">
  <img src="https://github.com/rosteleset/SmartYard-iOS/blob/public/Screenshots/iOS/1.png?raw=true" width="100" />
  <img src="https://github.com/rosteleset/SmartYard-iOS/blob/public/Screenshots/iOS/2.png?raw=true" width="100" /> 
  <img src="https://github.com/rosteleset/SmartYard-iOS/blob/public/Screenshots/iOS/3.png?raw=true" width="100" />
  <img src="https://github.com/rosteleset/SmartYard-iOS/blob/public/Screenshots/iOS/4.png?raw=true" width="100" />
  <img src="https://github.com/rosteleset/SmartYard-iOS/blob/public/Screenshots/iOS/5.png?raw=true" width="100" />
  <img src="https://github.com/rosteleset/SmartYard-iOS/blob/public/Screenshots/iOS/6.png?raw=true" width="100" />
  <img src="https://github.com/rosteleset/SmartYard-iOS/blob/public/Screenshots/iOS/7.png?raw=true" width="100" />
  <img src="https://github.com/rosteleset/SmartYard-iOS/blob/public/Screenshots/iOS/8.png?raw=true" width="100" />
  <img src="https://github.com/rosteleset/SmartYard-iOS/blob/public/Screenshots/iOS/9.png?raw=true" width="100" />
  <img src="https://github.com/rosteleset/SmartYard-iOS/blob/public/Screenshots/iOS/10.png?raw=true" width="100" />
  <img src="https://github.com/rosteleset/SmartYard-iOS/blob/public/Screenshots/iOS/11.png?raw=true" width="100" />
  <img src="https://github.com/rosteleset/SmartYard-iOS/blob/public/Screenshots/iOS/12.png?raw=true" width="100" />
  <img src="https://github.com/rosteleset/SmartYard-iOS/blob/public/Screenshots/iOS/13.png?raw=true" width="100" />
  <img src="https://github.com/rosteleset/SmartYard-iOS/blob/public/Screenshots/iOS/14.png?raw=true" width="100" />
  <img src="https://github.com/rosteleset/SmartYard-iOS/blob/public/Screenshots/iOS/15.png?raw=true" width="100" />
  <img src="https://github.com/rosteleset/SmartYard-iOS/blob/public/Screenshots/iOS/16.png?raw=true" width="100" />
  <img src="https://github.com/rosteleset/SmartYard-iOS/blob/public/Screenshots/iOS/17.png?raw=true" width="100" />
  <img src="https://github.com/rosteleset/SmartYard-iOS/blob/public/Screenshots/iOS/18.png?raw=true" width="100" />
</p>

## Частые вопросы (FAQ)
* Где брать GoogleService-Info.plist для сборки приложения?

GoogleService-Info.plist - это файл настроек проекта для работы с Google Firebase, который необходимо скачать из консоли Firebase после регистрации там своего проекта. Инструкция по регистрации https://firebase.google.com/docs/ios/setup

* Как добавить свой сервер в список операторов, поддерживаемых приложением?

Напишите ваш запрос на добавление нам на почту: sesameware@gmail.com или свяжитесь с нами через Telegram https://t.me/+39S-IGTfmMdmZDJi

## Лицензия и условия использования
Данный проект опубликован под стандартной общественной лицензией [GNU GPLv3](https://www.gnu.org/licenses/gpl-3.0.html).
Вы можете модифицировать и использовать наши наработки в своих проектах, в т.ч. коммерческих, при обязательном условии публикации их исходного кода.
Также мы готовы рассмотреть ваши Pull requests, если вы хотите чтобы наш проект развивался с учётом ваших модификаций и доработок.

