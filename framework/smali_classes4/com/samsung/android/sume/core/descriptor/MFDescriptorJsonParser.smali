.class public Lcom/samsung/android/sume/core/descriptor/MFDescriptorJsonParser;
.super Ljava/lang/Object;
.source "MFDescriptorJsonParser.java"

# interfaces
.implements Lcom/samsung/android/sume/core/descriptor/MFDescriptorParser;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Ljava/io/InputStream;)Lcom/samsung/android/sume/core/descriptor/MFDescriptor;
    .registers 3
    .param p1, "stream"    # Ljava/io/InputStream;

    .line 10
    const/4 v0, 0x0

    return-object v0
.end method
