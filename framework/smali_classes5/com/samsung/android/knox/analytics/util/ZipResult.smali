.class public Lcom/samsung/android/knox/analytics/util/ZipResult;
.super Ljava/lang/Object;
.source "ZipResult.java"


# instance fields
.field private content:[B

.field private length:I

.field private originalLength:I


# direct methods
.method public constructor <init>([BII)V
    .registers 4
    .param p1, "content"    # [B
    .param p2, "length"    # I
    .param p3, "originalLength"    # I

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/samsung/android/knox/analytics/util/ZipResult;->content:[B

    .line 14
    iput p2, p0, Lcom/samsung/android/knox/analytics/util/ZipResult;->length:I

    .line 15
    iput p3, p0, Lcom/samsung/android/knox/analytics/util/ZipResult;->originalLength:I

    .line 16
    return-void
.end method


# virtual methods
.method public getContent()[B
    .registers 2

    .line 19
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/util/ZipResult;->content:[B

    return-object v0
.end method

.method public getLength()I
    .registers 2

    .line 23
    iget v0, p0, Lcom/samsung/android/knox/analytics/util/ZipResult;->length:I

    return v0
.end method

.method public getOriginalLength()I
    .registers 2

    .line 27
    iget v0, p0, Lcom/samsung/android/knox/analytics/util/ZipResult;->originalLength:I

    return v0
.end method
