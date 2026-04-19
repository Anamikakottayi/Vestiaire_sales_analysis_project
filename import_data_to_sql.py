import pandas as pd
import numpy as np
from sqlalchemy import create_engine
df = pd.read_csv("cleaned_vestiaire.csv")
df.replace([np.inf, -np.inf], None, inplace=True)
engine = create_engine("mysql+pymysql://root:Dwaraka#18@localhost/sales_db")
df.to_sql(
    "sales_data",
    con=engine,
    if_exists="replace",  
    index=False,
    chunksize=5000         
)