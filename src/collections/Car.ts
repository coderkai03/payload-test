import { CollectionConfig } from "payload";

export const Car: CollectionConfig = {
  slug: "cars",
  access: {
    read: () => true,
  },
  fields: [
    {
      name: "name",
      type: "text",
    },
    {
        name: "image",
        type: "upload",
        relationTo: "media",
    }
  ],
}

