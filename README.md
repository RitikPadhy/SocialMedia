# 🚀 Web3 Twitter dApp — README

## 📌 Overview
We are building a **Web3 Twitter-style decentralized application** using **Next.js** for the frontend and **TailwindCSS** for styling. Users can authenticate using **MetaMask**, create tweets, and even **mint NFTs as profile pictures**.  

Smart contracts are written in **Solidity**, follow the **ERC-721 NFT Standard**, and are deployed using **Hardhat**. Images for NFTs are stored using **Pinata (IPFS)**.  
We use **Sanity.io** as the backend database for storing tweets and users, while **Alchemy API** (Rinkeby testnet) provides the RPC connection to the Ethereum blockchain. The final dApp is deployed on **Vercel**.

---

## 🛠️ Tech Stack

### **Frontend**
- Next.js  
- TailwindCSS  
- React Context API (state management)

### **Smart Contracts**
- Solidity  
- OpenZeppelin (ERC-721 implementation)  
- Hardhat (compile & deploy)  
- Etherscan (contract verification)

### **Web3 Tools**
- MetaMask (authentication)  
- Alchemy API (Rinkeby RPC)  
- Pinata (IPFS file storage)

### **Backend**
- Sanity.io  
- GROQ & Sanity APIs for data access

### **Deployment**
- Vercel

---

## 🎮 App Demo Flow

### **Connect Wallet**
- User connects their wallet via MetaMask.
- User can log out anytime.

### **Profile Features**
- Profile picture can be changed in Sanity.
- Users can mint NFTs — each NFT is a unique ERC-721 token.
- NFT images are uploaded to Pinata (IPFS).

### **Tweeting**
- Tweets are stored in Sanity.io.
- Minted NFT name and author correctly appear when tweeting.
- Tweets are fully linked to the user profile.

### **Storage Visibility**
- Tweets appear in Sanity Studio.
- NFT images appear in Pinata (IPFS dashboard).

---

## 🧱 Architecture Flow

