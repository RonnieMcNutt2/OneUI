.class public Lcom/samsung/android/fontutil/FontCache;
.super Ljava/lang/Object;
.source "FontCache.java"


# static fields
.field private static final fontCache:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 11
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/samsung/android/fontutil/FontCache;->fontCache:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;Landroid/content/res/AssetManager;)Landroid/graphics/Typeface;
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "assetmanager"    # Landroid/content/res/AssetManager;

    .line 14
    sget-object v0, Lcom/samsung/android/fontutil/FontCache;->fontCache:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Typeface;

    .line 16
    .local v1, "typeface":Landroid/graphics/Typeface;
    if-eqz v1, :cond_b

    .line 17
    return-object v1

    .line 21
    :cond_b
    :try_start_b
    invoke-static {p1, p0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_f} :catch_15

    move-object v1, v2

    .line 24
    nop

    .line 26
    invoke-virtual {v0, p0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    return-object v1

    .line 22
    :catch_15
    move-exception v0

    .line 23
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    return-object v2
.end method
