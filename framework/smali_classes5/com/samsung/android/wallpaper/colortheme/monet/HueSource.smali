.class final Lcom/samsung/android/wallpaper/colortheme/monet/HueSource;
.super Ljava/lang/Object;
.source "ColorScheme.java"

# interfaces
.implements Lcom/samsung/android/wallpaper/colortheme/monet/Hue;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/internal/graphics/cam/Cam;)D
    .registers 4
    .param p1, "sourceColor"    # Lcom/android/internal/graphics/cam/Cam;

    .line 79
    invoke-virtual {p1}, Lcom/android/internal/graphics/cam/Cam;->getHue()F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method
