.class final Lcom/samsung/android/wallpaper/colortheme/monet/ChromaMultiple;
.super Ljava/lang/Object;
.source "ColorScheme.java"

# interfaces
.implements Lcom/samsung/android/wallpaper/colortheme/monet/Chroma;


# instance fields
.field private final multiple:D


# direct methods
.method public constructor <init>(D)V
    .registers 3
    .param p1, "multiple"    # D

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput-wide p1, p0, Lcom/samsung/android/wallpaper/colortheme/monet/ChromaMultiple;->multiple:D

    .line 188
    return-void
.end method


# virtual methods
.method public get(Lcom/android/internal/graphics/cam/Cam;)D
    .registers 6
    .param p1, "sourceColor"    # Lcom/android/internal/graphics/cam/Cam;

    .line 179
    invoke-virtual {p1}, Lcom/android/internal/graphics/cam/Cam;->getChroma()F

    move-result v0

    float-to-double v0, v0

    iget-wide v2, p0, Lcom/samsung/android/wallpaper/colortheme/monet/ChromaMultiple;->multiple:D

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public final getMultiple()D
    .registers 3

    .line 183
    iget-wide v0, p0, Lcom/samsung/android/wallpaper/colortheme/monet/ChromaMultiple;->multiple:D

    return-wide v0
.end method
