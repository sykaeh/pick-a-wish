import "./wish-list-items.pcss";

import anchorme from "anchorme";

const options = {
  attributes: {
    target: "_blank",
    rel: "noopener",
  },
  protocol: (string) => {
    if (anchorme.validate.email(string)) {
      return "mailto:";
    }
    return "https://";
  },
};
const elements = Array.from(document.getElementsByClassName("anchorme"));
elements.forEach((el) => {
  el.innerHTML = anchorme({ input: el.innerHTML, options });
});
