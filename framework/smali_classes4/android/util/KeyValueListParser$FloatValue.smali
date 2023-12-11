.class public Landroid/util/KeyValueListParser$FloatValue;
.super Ljava/lang/Object;
.source "KeyValueListParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/KeyValueListParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FloatValue"
.end annotation


# instance fields
.field private final mDefaultValue:F

.field private final mKey:Ljava/lang/String;

.field private mValue:F


# direct methods
.method public constructor <init>(Ljava/lang/String;F)V
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # F

    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 385
    iput-object p1, p0, Landroid/util/KeyValueListParser$FloatValue;->mKey:Ljava/lang/String;

    .line 386
    iput p2, p0, Landroid/util/KeyValueListParser$FloatValue;->mDefaultValue:F

    .line 387
    iput p2, p0, Landroid/util/KeyValueListParser$FloatValue;->mValue:F

    .line 388
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 417
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 418
    iget-object v0, p0, Landroid/util/KeyValueListParser$FloatValue;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 419
    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 420
    iget v0, p0, Landroid/util/KeyValueListParser$FloatValue;->mValue:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 421
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 422
    return-void
.end method

.method public dumpProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "tag"    # J

    .line 426
    iget v0, p0, Landroid/util/KeyValueListParser$FloatValue;->mValue:F

    invoke-virtual {p1, p2, p3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 427
    return-void
.end method

.method public getDefaultValue()F
    .registers 2

    .line 402
    iget v0, p0, Landroid/util/KeyValueListParser$FloatValue;->mDefaultValue:F

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 2

    .line 397
    iget-object v0, p0, Landroid/util/KeyValueListParser$FloatValue;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()F
    .registers 2

    .line 407
    iget v0, p0, Landroid/util/KeyValueListParser$FloatValue;->mValue:F

    return v0
.end method

.method public parse(Landroid/util/KeyValueListParser;)V
    .registers 4
    .param p1, "parser"    # Landroid/util/KeyValueListParser;

    .line 392
    iget-object v0, p0, Landroid/util/KeyValueListParser$FloatValue;->mKey:Ljava/lang/String;

    iget v1, p0, Landroid/util/KeyValueListParser$FloatValue;->mDefaultValue:F

    invoke-virtual {p1, v0, v1}, Landroid/util/KeyValueListParser;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Landroid/util/KeyValueListParser$FloatValue;->mValue:F

    .line 393
    return-void
.end method

.method public setValue(F)V
    .registers 2
    .param p1, "value"    # F

    .line 412
    iput p1, p0, Landroid/util/KeyValueListParser$FloatValue;->mValue:F

    .line 413
    return-void
.end method
