import { config, library, dom } from "@fortawesome/fontawesome-svg-core";
import {
  faPlus,
  faEye,
  faSignOutAlt,
  faUsers,
  faPencilAlt,
  faStar,
  faGift,
  faShoppingCart,
  faTrashAlt,
  faCheck,
  faTimes,
} from "@fortawesome/free-solid-svg-icons";
import { faCreditCard } from "@fortawesome/free-regular-svg-icons";

config.mutateApproach = "sync";

library.add(
  faPlus,
  faEye,
  faSignOutAlt,
  faUsers,
  faPencilAlt,
  faStar,
  faGift,
  faShoppingCart,
  faTrashAlt,
  faCheck,
  faTimes,
  faCreditCard
);

dom.watch();
