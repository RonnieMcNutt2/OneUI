.class Lcom/samsung/android/knox/dar/StreamCipher$KeyStream;
.super Ljava/lang/Object;
.source "StreamCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/dar/StreamCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyStream"
.end annotation


# instance fields
.field private mKey:[B


# direct methods
.method constructor <init>([B)V
    .registers 2
    .param p1, "key"    # [B

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    iput-object p1, p0, Lcom/samsung/android/knox/dar/StreamCipher$KeyStream;->mKey:[B

    .line 212
    return-void
.end method


# virtual methods
.method destroy()V
    .registers 2

    .line 219
    iget-object v0, p0, Lcom/samsung/android/knox/dar/StreamCipher$KeyStream;->mKey:[B

    invoke-static {v0}, Lcom/samsung/android/knox/dar/StreamCipher;->clear([B)V

    .line 220
    return-void
.end method

.method getKey()[B
    .registers 2

    .line 215
    iget-object v0, p0, Lcom/samsung/android/knox/dar/StreamCipher$KeyStream;->mKey:[B

    return-object v0
.end method
