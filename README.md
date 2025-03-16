# Gen-AI-for-Systems-Gym  

## Overview  
This repository provides a gym environment designed to explore the intersection of Generative AI and computer systems, with a specific focus on cache replacement strategies in CPU architecture. Our goal is to develop and evaluate machine learning models that enhance caching mechanisms by integrating learned policies with traditional system designs.  

We aim to:  
- Train and evaluate ML-based cache replacement strategies.  
- Generate and analyze cache statistics.  
- Leverage Retrieval-Augmented Generation (RAG) to enhance decision-making.  
- Utilize an LLM-based assistant for analyzing model performance and cache behaviors.  
- Experiment with different architectures and embeddings to improve predictive accuracy.  

This work is developed as part of the **ECE/CSC 592 - Generative AI for Systems** course at **NC State University**, under the guidance of **Dr. Samira Mirbagher Ajorpaz**. It is built upon **ChampSim**, a widely used cache simulation framework, and integrates ideas from **Google Research & Stanford's Parrot project**.  

## Structure of the Gym  
The repository is structured to support various stages of model training, evaluation, and integration with RAG-based systems:  

1. **Trace Extraction:**  
   - Extract cache traces from simulations.  
   - Preprocess data to generate meaningful cache statistics.  

2. **Model Training:**  
   - Train ML models for cache replacement policies.  
   - Experiment with reinforcement learning and neural architectures.  

3. **Model Evaluation:**  
   - Assess performance using cache hit rates, latency, and other key metrics.  
   - Compare ML-based approaches with traditional heuristics.  

4. **RAG System Integration:**  
   - Feed extracted experiment data into a RAG system.  
   - Improve reasoning capabilities using LLM-assisted retrieval.  

5. **LLM-Assisted Analysis:**  
   - Use LLMs to interpret cache replacement strategies and suggest optimizations.  

## Advanced Research Directions  
- **Exploring Different Architectures:** Compare CNNs, transformers, and reinforcement learning for cache prediction.  
- **Embedding Analysis:** Investigate effective feature embeddings for cache access patterns.  
- **Feature Engineering:** Identify critical features that influence cache performance.  
- **LLM Fine-Tuning:** Customize an LLM to enhance system-related queries and cache optimizations.  

## How to Use the Gym?  
1. Clone the repository:  
   ```bash
   git clone https://github.com/SPGundewar/Gen-AI-Cache-Rate-Model-Performance.git
   ```
2. Set up dependencies:  
   ```bash
   pip install -r requirements.txt
   ```
3. Extract cache traces from simulation runs.  
4. Train and evaluate ML models on extracted features.  
5. Use the LLM assistant to analyze and refine strategies.  

## Contribution  
We welcome contributions to improve this research. Please fork the repository, propose changes, and submit a pull request.  

## License  
This project is licensed under the MIT License.  
