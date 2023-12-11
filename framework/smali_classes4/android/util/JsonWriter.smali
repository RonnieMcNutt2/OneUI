.class public final Landroid/util/JsonWriter;
.super Ljava/lang/Object;
.source "JsonWriter.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private indent:Ljava/lang/String;

.field private lenient:Z

.field private final out:Ljava/io/Writer;

.field private separator:Ljava/lang/String;

.field private final stack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/JsonScope;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .registers 4
    .param p1, "out"    # Ljava/io/Writer;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/util/JsonWriter;->stack:Ljava/util/List;

    .line 127
    sget-object v1, Landroid/util/JsonScope;->EMPTY_DOCUMENT:Landroid/util/JsonScope;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    const-string v0, ":"

    iput-object v0, p0, Landroid/util/JsonWriter;->separator:Ljava/lang/String;

    .line 149
    if-eqz p1, :cond_18

    .line 152
    iput-object p1, p0, Landroid/util/JsonWriter;->out:Ljava/io/Writer;

    .line 153
    return-void

    .line 150
    :cond_18
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private beforeName()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 477
    invoke-direct {p0}, Landroid/util/JsonWriter;->peek()Landroid/util/JsonScope;

    move-result-object v0

    .line 478
    .local v0, "context":Landroid/util/JsonScope;
    sget-object v1, Landroid/util/JsonScope;->NONEMPTY_OBJECT:Landroid/util/JsonScope;

    if-ne v0, v1, :cond_10

    .line 479
    iget-object v1, p0, Landroid/util/JsonWriter;->out:Ljava/io/Writer;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(I)V

    goto :goto_14

    .line 480
    :cond_10
    sget-object v1, Landroid/util/JsonScope;->EMPTY_OBJECT:Landroid/util/JsonScope;

    if-ne v0, v1, :cond_1d

    .line 483
    :goto_14
    invoke-direct {p0}, Landroid/util/JsonWriter;->newline()V

    .line 484
    sget-object v1, Landroid/util/JsonScope;->DANGLING_NAME:Landroid/util/JsonScope;

    invoke-direct {p0, v1}, Landroid/util/JsonWriter;->replaceTop(Landroid/util/JsonScope;)V

    .line 485
    return-void

    .line 481
    :cond_1d
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Nesting problem: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/util/JsonWriter;->stack:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private beforeValue(Z)V
    .registers 5
    .param p1, "root"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 496
    sget-object v0, Landroid/util/JsonWriter$1;->$SwitchMap$android$util$JsonScope:[I

    invoke-direct {p0}, Landroid/util/JsonWriter;->peek()Landroid/util/JsonScope;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/JsonScope;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_6a

    .line 525
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Nesting problem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/util/JsonWriter;->stack:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 521
    :pswitch_2a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JSON must have only one top-level value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 516
    :pswitch_32
    iget-object v0, p0, Landroid/util/JsonWriter;->out:Ljava/io/Writer;

    iget-object v1, p0, Landroid/util/JsonWriter;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 517
    sget-object v0, Landroid/util/JsonScope;->NONEMPTY_OBJECT:Landroid/util/JsonScope;

    invoke-direct {p0, v0}, Landroid/util/JsonWriter;->replaceTop(Landroid/util/JsonScope;)V

    .line 518
    goto :goto_68

    .line 511
    :pswitch_3f
    iget-object v0, p0, Landroid/util/JsonWriter;->out:Ljava/io/Writer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 512
    invoke-direct {p0}, Landroid/util/JsonWriter;->newline()V

    .line 513
    goto :goto_68

    .line 506
    :pswitch_4a
    sget-object v0, Landroid/util/JsonScope;->NONEMPTY_ARRAY:Landroid/util/JsonScope;

    invoke-direct {p0, v0}, Landroid/util/JsonWriter;->replaceTop(Landroid/util/JsonScope;)V

    .line 507
    invoke-direct {p0}, Landroid/util/JsonWriter;->newline()V

    .line 508
    goto :goto_68

    .line 498
    :pswitch_53
    iget-boolean v0, p0, Landroid/util/JsonWriter;->lenient:Z

    if-nez v0, :cond_62

    if-eqz p1, :cond_5a

    goto :goto_62

    .line 499
    :cond_5a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JSON must start with an array or an object."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 502
    :cond_62
    :goto_62
    sget-object v0, Landroid/util/JsonScope;->NONEMPTY_DOCUMENT:Landroid/util/JsonScope;

    invoke-direct {p0, v0}, Landroid/util/JsonWriter;->replaceTop(Landroid/util/JsonScope;)V

    .line 503
    nop

    .line 527
    :goto_68
    return-void

    nop

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_53
        :pswitch_4a
        :pswitch_3f
        :pswitch_32
        :pswitch_2a
    .end packed-switch
.end method

.method private close(Landroid/util/JsonScope;Landroid/util/JsonScope;Ljava/lang/String;)Landroid/util/JsonWriter;
    .registers 8
    .param p1, "empty"    # Landroid/util/JsonScope;
    .param p2, "nonempty"    # Landroid/util/JsonScope;
    .param p3, "closeBracket"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 251
    invoke-direct {p0}, Landroid/util/JsonWriter;->peek()Landroid/util/JsonScope;

    move-result-object v0

    .line 252
    .local v0, "context":Landroid/util/JsonScope;
    if-eq v0, p2, :cond_24

    if-ne v0, p1, :cond_9

    goto :goto_24

    .line 253
    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Nesting problem: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/util/JsonWriter;->stack:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 256
    :cond_24
    :goto_24
    iget-object v1, p0, Landroid/util/JsonWriter;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 257
    if-ne v0, p2, :cond_34

    .line 258
    invoke-direct {p0}, Landroid/util/JsonWriter;->newline()V

    .line 260
    :cond_34
    iget-object v1, p0, Landroid/util/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 261
    return-object p0
.end method

.method private newline()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 462
    iget-object v0, p0, Landroid/util/JsonWriter;->indent:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 463
    return-void

    .line 466
    :cond_5
    iget-object v0, p0, Landroid/util/JsonWriter;->out:Ljava/io/Writer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 467
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_d
    iget-object v1, p0, Landroid/util/JsonWriter;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 468
    iget-object v1, p0, Landroid/util/JsonWriter;->out:Ljava/io/Writer;

    iget-object v2, p0, Landroid/util/JsonWriter;->indent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 467
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 470
    .end local v0    # "i":I
    :cond_1f
    return-void
.end method

.method private open(Landroid/util/JsonScope;Ljava/lang/String;)Landroid/util/JsonWriter;
    .registers 4
    .param p1, "empty"    # Landroid/util/JsonScope;
    .param p2, "openBracket"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/util/JsonWriter;->beforeValue(Z)V

    .line 240
    iget-object v0, p0, Landroid/util/JsonWriter;->stack:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    iget-object v0, p0, Landroid/util/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 242
    return-object p0
.end method

.method private peek()Landroid/util/JsonScope;
    .registers 3

    .line 268
    iget-object v0, p0, Landroid/util/JsonWriter;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/JsonScope;

    return-object v0
.end method

.method private replaceTop(Landroid/util/JsonScope;)V
    .registers 4
    .param p1, "topOfStack"    # Landroid/util/JsonScope;

    .line 275
    iget-object v0, p0, Landroid/util/JsonWriter;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 276
    return-void
.end method

.method private string(Ljava/lang/String;)V
    .registers 9
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 401
    iget-object v0, p0, Landroid/util/JsonWriter;->out:Ljava/io/Writer;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 402
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "length":I
    :goto_c
    if-ge v0, v2, :cond_7c

    .line 403
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 416
    .local v3, "c":C
    const-string v4, "\\u%04x"

    sparse-switch v3, :sswitch_data_82

    .line 449
    const/16 v5, 0x1f

    if-gt v3, v5, :cond_74

    .line 450
    iget-object v5, p0, Landroid/util/JsonWriter;->out:Ljava/io/Writer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_79

    .line 445
    :sswitch_2d
    iget-object v5, p0, Landroid/util/JsonWriter;->out:Ljava/io/Writer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 446
    goto :goto_79

    .line 419
    :sswitch_3f
    iget-object v4, p0, Landroid/util/JsonWriter;->out:Ljava/io/Writer;

    const/16 v5, 0x5c

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(I)V

    .line 420
    iget-object v4, p0, Landroid/util/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v4, v3}, Ljava/io/Writer;->write(I)V

    .line 421
    goto :goto_79

    .line 436
    :sswitch_4c
    iget-object v4, p0, Landroid/util/JsonWriter;->out:Ljava/io/Writer;

    const-string v5, "\\r"

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 437
    goto :goto_79

    .line 440
    :sswitch_54
    iget-object v4, p0, Landroid/util/JsonWriter;->out:Ljava/io/Writer;

    const-string v5, "\\f"

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 441
    goto :goto_79

    .line 432
    :sswitch_5c
    iget-object v4, p0, Landroid/util/JsonWriter;->out:Ljava/io/Writer;

    const-string v5, "\\n"

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 433
    goto :goto_79

    .line 424
    :sswitch_64
    iget-object v4, p0, Landroid/util/JsonWriter;->out:Ljava/io/Writer;

    const-string v5, "\\t"

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 425
    goto :goto_79

    .line 428
    :sswitch_6c
    iget-object v4, p0, Landroid/util/JsonWriter;->out:Ljava/io/Writer;

    const-string v5, "\\b"

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 429
    goto :goto_79

    .line 452
    :cond_74
    iget-object v4, p0, Landroid/util/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v4, v3}, Ljava/io/Writer;->write(I)V

    .line 402
    .end local v3    # "c":C
    :goto_79
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 458
    .end local v0    # "i":I
    .end local v2    # "length":I
    :cond_7c
    iget-object v0, p0, Landroid/util/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 459
    return-void

    :sswitch_data_82
    .sparse-switch
        0x8 -> :sswitch_6c
        0x9 -> :sswitch_64
        0xa -> :sswitch_5c
        0xc -> :sswitch_54
        0xd -> :sswitch_4c
        0x22 -> :sswitch_3f
        0x5c -> :sswitch_3f
        0x2028 -> :sswitch_2d
        0x2029 -> :sswitch_2d
    .end sparse-switch
.end method


# virtual methods
.method public beginArray()Landroid/util/JsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    sget-object v0, Landroid/util/JsonScope;->EMPTY_ARRAY:Landroid/util/JsonScope;

    const-string v1, "["

    invoke-direct {p0, v0, v1}, Landroid/util/JsonWriter;->open(Landroid/util/JsonScope;Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public beginObject()Landroid/util/JsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    sget-object v0, Landroid/util/JsonScope;->EMPTY_OBJECT:Landroid/util/JsonScope;

    const-string/jumbo v1, "{"

    invoke-direct {p0, v0, v1}, Landroid/util/JsonWriter;->open(Landroid/util/JsonScope;Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 393
    iget-object v0, p0, Landroid/util/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 395
    invoke-direct {p0}, Landroid/util/JsonWriter;->peek()Landroid/util/JsonScope;

    move-result-object v0

    sget-object v1, Landroid/util/JsonScope;->NONEMPTY_DOCUMENT:Landroid/util/JsonScope;

    if-ne v0, v1, :cond_e

    .line 398
    return-void

    .line 396
    :cond_e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Incomplete document"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public endArray()Landroid/util/JsonWriter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    sget-object v0, Landroid/util/JsonScope;->EMPTY_ARRAY:Landroid/util/JsonScope;

    sget-object v1, Landroid/util/JsonScope;->NONEMPTY_ARRAY:Landroid/util/JsonScope;

    const-string v2, "]"

    invoke-direct {p0, v0, v1, v2}, Landroid/util/JsonWriter;->close(Landroid/util/JsonScope;Landroid/util/JsonScope;Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public endObject()Landroid/util/JsonWriter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 231
    sget-object v0, Landroid/util/JsonScope;->EMPTY_OBJECT:Landroid/util/JsonScope;

    sget-object v1, Landroid/util/JsonScope;->NONEMPTY_OBJECT:Landroid/util/JsonScope;

    const-string/jumbo v2, "}"

    invoke-direct {p0, v0, v1, v2}, Landroid/util/JsonWriter;->close(Landroid/util/JsonScope;Landroid/util/JsonScope;Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 384
    iget-object v0, p0, Landroid/util/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 385
    return-void
.end method

.method public isLenient()Z
    .registers 2

    .line 193
    iget-boolean v0, p0, Landroid/util/JsonWriter;->lenient:Z

    return v0
.end method

.method public name(Ljava/lang/String;)Landroid/util/JsonWriter;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 285
    if-eqz p1, :cond_9

    .line 288
    invoke-direct {p0}, Landroid/util/JsonWriter;->beforeName()V

    .line 289
    invoke-direct {p0, p1}, Landroid/util/JsonWriter;->string(Ljava/lang/String;)V

    .line 290
    return-object p0

    .line 286
    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nullValue()Landroid/util/JsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 314
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/util/JsonWriter;->beforeValue(Z)V

    .line 315
    iget-object v0, p0, Landroid/util/JsonWriter;->out:Ljava/io/Writer;

    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 316
    return-object p0
.end method

.method public setIndent(Ljava/lang/String;)V
    .registers 3
    .param p1, "indent"    # Ljava/lang/String;

    .line 164
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/util/JsonWriter;->indent:Ljava/lang/String;

    .line 166
    const-string v0, ":"

    iput-object v0, p0, Landroid/util/JsonWriter;->separator:Ljava/lang/String;

    goto :goto_14

    .line 168
    :cond_e
    iput-object p1, p0, Landroid/util/JsonWriter;->indent:Ljava/lang/String;

    .line 169
    const-string v0, ": "

    iput-object v0, p0, Landroid/util/JsonWriter;->separator:Ljava/lang/String;

    .line 171
    :goto_14
    return-void
.end method

.method public setLenient(Z)V
    .registers 2
    .param p1, "lenient"    # Z

    .line 186
    iput-boolean p1, p0, Landroid/util/JsonWriter;->lenient:Z

    .line 187
    return-void
.end method

.method public value(D)Landroid/util/JsonWriter;
    .registers 6
    .param p1, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 338
    iget-boolean v0, p0, Landroid/util/JsonWriter;->lenient:Z

    if-nez v0, :cond_2a

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_2a

    .line 339
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Numeric values must be finite, but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 341
    :cond_2a
    :goto_2a
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/util/JsonWriter;->beforeValue(Z)V

    .line 342
    iget-object v0, p0, Landroid/util/JsonWriter;->out:Ljava/io/Writer;

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 343
    return-object p0
.end method

.method public value(J)Landroid/util/JsonWriter;
    .registers 5
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 352
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/util/JsonWriter;->beforeValue(Z)V

    .line 353
    iget-object v0, p0, Landroid/util/JsonWriter;->out:Ljava/io/Writer;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 354
    return-object p0
.end method

.method public value(Ljava/lang/Number;)Landroid/util/JsonWriter;
    .registers 6
    .param p1, "value"    # Ljava/lang/Number;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 365
    if-nez p1, :cond_7

    .line 366
    invoke-virtual {p0}, Landroid/util/JsonWriter;->nullValue()Landroid/util/JsonWriter;

    move-result-object v0

    return-object v0

    .line 369
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 370
    .local v0, "string":Ljava/lang/String;
    iget-boolean v1, p0, Landroid/util/JsonWriter;->lenient:Z

    if-nez v1, :cond_41

    .line 371
    const-string v1, "-Infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    const-string v1, "Infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    const-string v1, "NaN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    goto :goto_41

    .line 372
    :cond_28
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Numeric values must be finite, but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 374
    :cond_41
    :goto_41
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/util/JsonWriter;->beforeValue(Z)V

    .line 375
    iget-object v1, p0, Landroid/util/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 376
    return-object p0
.end method

.method public value(Ljava/lang/String;)Landroid/util/JsonWriter;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 300
    if-nez p1, :cond_7

    .line 301
    invoke-virtual {p0}, Landroid/util/JsonWriter;->nullValue()Landroid/util/JsonWriter;

    move-result-object v0

    return-object v0

    .line 303
    :cond_7
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/util/JsonWriter;->beforeValue(Z)V

    .line 304
    invoke-direct {p0, p1}, Landroid/util/JsonWriter;->string(Ljava/lang/String;)V

    .line 305
    return-object p0
.end method

.method public value(Z)Landroid/util/JsonWriter;
    .registers 4
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 325
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/util/JsonWriter;->beforeValue(Z)V

    .line 326
    iget-object v0, p0, Landroid/util/JsonWriter;->out:Ljava/io/Writer;

    if-eqz p1, :cond_c

    const-string/jumbo v1, "true"

    goto :goto_e

    :cond_c
    const-string v1, "false"

    :goto_e
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 327
    return-object p0
.end method
