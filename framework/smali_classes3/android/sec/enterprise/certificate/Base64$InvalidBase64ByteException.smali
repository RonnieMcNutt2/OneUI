.class Landroid/sec/enterprise/certificate/Base64$InvalidBase64ByteException;
.super Ljava/lang/Exception;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/enterprise/certificate/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InvalidBase64ByteException"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 195
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/sec/enterprise/certificate/Base64$InvalidBase64ByteException-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/sec/enterprise/certificate/Base64$InvalidBase64ByteException;-><init>()V

    return-void
.end method
