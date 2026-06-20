import pandas as pd

# Ruta del CSV original
input_file = r"data/raw/World Energy Consumption.csv"

# Cargar dataset
df = pd.read_csv(input_file)

# Columnas necesarias para el proyecto
columns_needed = [
    "country",
    "year",
    "iso_code",
    "population",
    "gdp",

    "nuclear_consumption",
    "nuclear_share_energy",

    "solar_consumption",
    "solar_share_energy",

    "wind_consumption",
    "wind_share_energy",

    "hydro_consumption",
    "hydro_share_energy",

    "coal_consumption",
    "coal_share_energy",

    "gas_consumption",
    "gas_share_energy",

    "oil_consumption",
    "oil_share_energy",

    "biofuel_consumption",
    "biofuel_share_energy"
]

# Mantener únicamente esas columnas
df_clean = df[columns_needed]

# Eliminar registros sin país o año
df_clean = df_clean.dropna(subset=["country", "year"])

# Guardar dataset limpio
output_file = r"data/processed/energy_transition_clean.csv"

df_clean.to_csv(output_file, index=False)

print("Archivo generado correctamente")
print(df_clean.shape)