# language: ru

Функционал: Использование верхней панели навигации

  Для того чтобы получать доступ ко всем открытым разделам сайта
  Как обычный посетитель
  Я хочу иметь возможность использовать пункты меню в верхней панели навигации

  Сценарий: Переход по логотипу на домашнюю страницу сайта
    Допустим я нахожусь не на домашней странице сайта
    Когда я кликаю по логотипу компании в верхнем левом углу сайта
    Тогда я должен увидеть надпись 'Сайт компании ООО "ПОЛИГОН"'

  Сценарий: Посещение страницы со списком новостей
    Допустим я нахожусь на сайте
    Когда я кликаю по пункту меню "Новости" в верхней навигационой панели сайта
    Тогда я должен увидеть заголовок "Список новостей"

  Сценарий: Посещение страницы с перечнем публикаций
    Допустим я нахожусь на сайте
    Когда я кликаю по пункту меню "Публикации" в верхней навигационой панели сайта
    Тогда я должен увидеть заголовок "Публикации"
      К тому же под ним я должен увидеть картинку с подписью "Статьи"
      И картинку с подписью "Видео"
      И картинку с подписью "Обзоры"
      И картинку с подписью "Дополнения"

  Сценарий: Посещение страницы с перечнем производителей
    Допустим я нахожусь на сайте
    Когда я кликаю по пункту меню "Каталог" в верхней навигационой панели сайта
    Тогда я должен увидеть заголовок "Каталог устройств"
      К тому же под ним я должен увидеть картинку с подписью "TELE"
      И картинку с подписью "COMAT-RELECO"
      И картинку с подписью "EMKO"
      И картинку с подписью "BENEDICT"
      И картинку с подписью "CITEL"
      И картинку с подписью "GRAESSLIN"
      И картинку с подписью "SONDER"
      И картинку с подписью "RELEQUICK"
      И картинку с подписью "CBI ELECTRIC"
      И картинку с подписью "ПОЛИГОН"
      И картинку с подписью "HUBER+SUHNER"
      И картинку с подписью "TEHNOPLAST"

  Сценарий: Получение доступа к поиску по сайту для неавторизованных пользователей
    Допустим я нахожусь на сайте
    Когда я кликаю по пункту меню "Поиск" в верхней навигационой панели сайта
    Тогда я должен увидеть ниспадающую панель с текстовым полем
      И это поле должно содержать текст по умолчанию "поиск"

  Сценарий: Посещение страницы со специальными предложениями
    Допустим я нахожусь на сайте
    Когда я кликаю по пункту меню "Специальные предложения" в верхней навигационой панели сайта
    Тогда я должен увидеть заголовок "Специальные предложения"

  Сценарий: Получение доступа к элементам ниспадающего меню "Информация"
    Допустим я нахожусь на сайте
    Когда я кликаю по пункту меню "Информация" в верхней навигационой панели сайта
    Тогда я должен увидеть ниспадающую панель со списком элементов меню
      И эта панель должна содержать пункт меню "О компании"
      Также эта панель должна содержать пункт меню "Сертификаты"
      Также эта панель должна содержать пункт меню "Буклеты и каталоги"
      Также эта панель должна содержать пункт меню "Список вакансий"
      Также эта панель должна содержать пункт меню "Рассылка новостей"
      Также эта панель должна содержать пункт меню "Обмен ссылками"
      Также эта панель должна содержать пункт меню "Карта сайта"
      Также эта панель должна содержать пункт меню "Контакты"
      К тому же эта панель должна содержать пункт меню "Служебный вход"