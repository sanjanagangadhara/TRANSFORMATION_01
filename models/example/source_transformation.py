import pandas as pd
import json

def model(dbt, session):

    source_df = dbt.ref("SOURCE_DATA")
    transformation_df = dbt.ref("TRANSFORMATION_META_DATA")

    df = pd.json_normalize(source_df)

    df.rename(columns = transformation_df["google"],inplace = True)


    final_df = df
    return final_df

