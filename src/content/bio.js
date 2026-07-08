// ============================================================
// BIO / ABOUT ME — edit this file to update the About window.
// Photo: replace src/assets/Biography/self.jpg (keep the name)
// or change the import below.
// ============================================================
import photo from "../assets/Biography/self.jpg";

export default {
  name: "Tyler Pimental",
  title: "DevOps / Cloud Platform Engineer",
  location: "Battle Creek, MI 📍",
  photo,

  // Shield badges under the photo: https://img.shields.io/badge/-<label>-<color>
  badges: [
    { label: "Azure Gov", color: "blue" },
    { label: "AWS GovCloud", color: "Green" },
    { label: "Terraform", color: "purple" },
    { label: "Kubernetes", color: "informational" },
  ],

  // Plain HTML allowed (links, <br>, etc.)
  about: `Hello, I'm Tyler! I'm a cloud platform engineer who designs, automates,
        and operates secure infrastructure across Azure Government and AWS GovCloud —
        Terraform-based IaC, private Kubernetes (AKS) platforms, and GitLab/Jenkins
        CI/CD pipelines for defense customers. I'm a USMC Veteran (2016–2020) and hold a
        B.S. in Computer Science. Now, I live with my Wife and 2 kids in southern Michigan.
        Any free time I may get is usually put towards some kind of project — I like to
        dabble in creating toys for my little ones made from microcontrollers and LEDs!
        This entire site runs on Azure for about $1 a month.`,

  resume: {
    text: "Check out my resume here.",
    href: "/files/tyler_pimental_resume.pdf",
  },
};
