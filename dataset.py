from datasets import load_dataset
from transformers import Wav2Vec2ForCTC, Wav2Vec2Tokenizer
import soundfile as sf
import torch
import jiwer
import fastwer


# librispeech_eval = load_dataset(
#     "patrickvonplaten/librispeech_asr_dummy", "clean")
librispeech_val = load_dataset(
    "librispeech_asr", "clean", split="validation")


print(librispeech_val)
