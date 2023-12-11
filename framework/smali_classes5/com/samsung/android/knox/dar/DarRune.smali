.class public Lcom/samsung/android/knox/dar/DarRune;
.super Ljava/lang/Object;
.source "DarRune.java"


# static fields
.field public static final KNOX_SUPPORT_DAR:Z = true

.field public static final KNOX_SUPPORT_DAR_DUAL:Z = true

.field public static final KNOX_SUPPORT_DAR_DUAL_DO:Z = true

.field public static final KNOX_SUPPORT_DAR_SDP:Z = true

.field public static final KNOX_SUPPORT_DAR_SDP_LOG:Z = true

.field public static final KNOX_SUPPORT_DAR_SDP_OR_DUAL:Z = true

.field public static final KNOX_SUPPORT_DAR_SECURE_FOLDER:Z = true

.field public static final KNOX_SUPPORT_DAR_VIRTUAL_USER:Z = true

.field public static final KNOX_SUPPORT_DAR_WEAVER:Z = true

.field public static final KNOX_SUPPORT_ENDPOINT_MONITORING:Z = true

.field private static final TAG:Ljava/lang/String; = "DarRune"

.field private static sInstance:Lcom/samsung/android/knox/dar/DarRune;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/knox/dar/DarRune;
    .registers 1

    .line 38
    sget-object v0, Lcom/samsung/android/knox/dar/DarRune;->sInstance:Lcom/samsung/android/knox/dar/DarRune;

    if-nez v0, :cond_b

    .line 39
    new-instance v0, Lcom/samsung/android/knox/dar/DarRune;

    invoke-direct {v0}, Lcom/samsung/android/knox/dar/DarRune;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/dar/DarRune;->sInstance:Lcom/samsung/android/knox/dar/DarRune;

    .line 41
    :cond_b
    sget-object v0, Lcom/samsung/android/knox/dar/DarRune;->sInstance:Lcom/samsung/android/knox/dar/DarRune;

    return-object v0
.end method
