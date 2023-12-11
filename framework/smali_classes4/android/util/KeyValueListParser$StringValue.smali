.class public Landroid/util/KeyValueListParser$StringValue;
.super Ljava/lang/Object;
.source "KeyValueListParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/KeyValueListParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StringValue"
.end annotation


# instance fields
.field private final mDefaultValue:Ljava/lang/String;

.field private final mKey:Ljava/lang/String;

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    iput-object p1, p0, Landroid/util/KeyValueListParser$StringValue;->mKey:Ljava/lang/String;

    .line 333
    iput-object p2, p0, Landroid/util/KeyValueListParser$StringValue;->mDefaultValue:Ljava/lang/String;

    .line 334
    iput-object p2, p0, Landroid/util/KeyValueListParser$StringValue;->mValue:Ljava/lang/String;

    .line 335
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 364
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Landroid/util/KeyValueListParser$StringValue;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 366
    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Landroid/util/KeyValueListParser$StringValue;->mValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 368
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 369
    return-void
.end method

.method public dumpProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "tag"    # J

    .line 373
    iget-object v0, p0, Landroid/util/KeyValueListParser$StringValue;->mValue:Ljava/lang/String;

    invoke-virtual {p1, p2, p3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 374
    return-void
.end method

.method public getDefaultValue()Ljava/lang/String;
    .registers 2

    .line 349
    iget-object v0, p0, Landroid/util/KeyValueListParser$StringValue;->mDefaultValue:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 2

    .line 344
    iget-object v0, p0, Landroid/util/KeyValueListParser$StringValue;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .line 354
    iget-object v0, p0, Landroid/util/KeyValueListParser$StringValue;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public parse(Landroid/util/KeyValueListParser;)V
    .registers 4
    .param p1, "parser"    # Landroid/util/KeyValueListParser;

    .line 339
    iget-object v0, p0, Landroid/util/KeyValueListParser$StringValue;->mKey:Ljava/lang/String;

    iget-object v1, p0, Landroid/util/KeyValueListParser$StringValue;->mDefaultValue:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/util/KeyValueListParser$StringValue;->mValue:Ljava/lang/String;

    .line 340
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .line 359
    iput-object p1, p0, Landroid/util/KeyValueListParser$StringValue;->mValue:Ljava/lang/String;

    .line 360
    return-void
.end method
