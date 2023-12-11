.class Lcom/android/framework/protobuf/Internal$MapAdapter$EntryAdapter;
.super Ljava/lang/Object;
.source "Internal.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/Internal$MapAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntryAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final realEntry:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "TK;TRealValue;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/framework/protobuf/Internal$MapAdapter;


# direct methods
.method public constructor <init>(Lcom/android/framework/protobuf/Internal$MapAdapter;Ljava/util/Map$Entry;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TRealValue;>;)V"
        }
    .end annotation

    .line 525
    .local p0, "this":Lcom/android/framework/protobuf/Internal$MapAdapter$EntryAdapter;, "Lcom/android/framework/protobuf/Internal$MapAdapter<TK;TV;TRealValue;>.EntryAdapter;"
    .local p2, "realEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TRealValue;>;"
    iput-object p1, p0, Lcom/android/framework/protobuf/Internal$MapAdapter$EntryAdapter;->this$0:Lcom/android/framework/protobuf/Internal$MapAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 526
    iput-object p2, p0, Lcom/android/framework/protobuf/Internal$MapAdapter$EntryAdapter;->realEntry:Ljava/util/Map$Entry;

    .line 527
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 550
    .local p0, "this":Lcom/android/framework/protobuf/Internal$MapAdapter$EntryAdapter;, "Lcom/android/framework/protobuf/Internal$MapAdapter<TK;TV;TRealValue;>.EntryAdapter;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 551
    return v0

    .line 553
    :cond_4
    instance-of v1, p1, Ljava/util/Map$Entry;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 554
    return v2

    .line 556
    :cond_a
    move-object v1, p1

    check-cast v1, Ljava/util/Map$Entry;

    .line 557
    .local v1, "other":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-virtual {p0}, Lcom/android/framework/protobuf/Internal$MapAdapter$EntryAdapter;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-virtual {p0}, Lcom/android/framework/protobuf/Internal$MapAdapter$EntryAdapter;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/framework/protobuf/Internal$MapAdapter$EntryAdapter;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_2b

    :cond_2a
    move v0, v2

    :goto_2b
    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 531
    .local p0, "this":Lcom/android/framework/protobuf/Internal$MapAdapter$EntryAdapter;, "Lcom/android/framework/protobuf/Internal$MapAdapter<TK;TV;TRealValue;>.EntryAdapter;"
    iget-object v0, p0, Lcom/android/framework/protobuf/Internal$MapAdapter$EntryAdapter;->realEntry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 536
    .local p0, "this":Lcom/android/framework/protobuf/Internal$MapAdapter$EntryAdapter;, "Lcom/android/framework/protobuf/Internal$MapAdapter<TK;TV;TRealValue;>.EntryAdapter;"
    iget-object v0, p0, Lcom/android/framework/protobuf/Internal$MapAdapter$EntryAdapter;->this$0:Lcom/android/framework/protobuf/Internal$MapAdapter;

    # getter for: Lcom/android/framework/protobuf/Internal$MapAdapter;->valueConverter:Lcom/android/framework/protobuf/Internal$MapAdapter$Converter;
    invoke-static {v0}, Lcom/android/framework/protobuf/Internal$MapAdapter;->access$000(Lcom/android/framework/protobuf/Internal$MapAdapter;)Lcom/android/framework/protobuf/Internal$MapAdapter$Converter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/framework/protobuf/Internal$MapAdapter$EntryAdapter;->realEntry:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/framework/protobuf/Internal$MapAdapter$Converter;->doForward(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 562
    .local p0, "this":Lcom/android/framework/protobuf/Internal$MapAdapter$EntryAdapter;, "Lcom/android/framework/protobuf/Internal$MapAdapter<TK;TV;TRealValue;>.EntryAdapter;"
    iget-object v0, p0, Lcom/android/framework/protobuf/Internal$MapAdapter$EntryAdapter;->realEntry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->hashCode()I

    move-result v0

    return v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 541
    .local p0, "this":Lcom/android/framework/protobuf/Internal$MapAdapter$EntryAdapter;, "Lcom/android/framework/protobuf/Internal$MapAdapter<TK;TV;TRealValue;>.EntryAdapter;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/android/framework/protobuf/Internal$MapAdapter$EntryAdapter;->realEntry:Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/android/framework/protobuf/Internal$MapAdapter$EntryAdapter;->this$0:Lcom/android/framework/protobuf/Internal$MapAdapter;

    # getter for: Lcom/android/framework/protobuf/Internal$MapAdapter;->valueConverter:Lcom/android/framework/protobuf/Internal$MapAdapter$Converter;
    invoke-static {v1}, Lcom/android/framework/protobuf/Internal$MapAdapter;->access$000(Lcom/android/framework/protobuf/Internal$MapAdapter;)Lcom/android/framework/protobuf/Internal$MapAdapter$Converter;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/framework/protobuf/Internal$MapAdapter$Converter;->doBackward(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 542
    .local v0, "oldValue":Ljava/lang/Object;, "TRealValue;"
    if-nez v0, :cond_14

    .line 543
    const/4 v1, 0x0

    return-object v1

    .line 545
    :cond_14
    iget-object v1, p0, Lcom/android/framework/protobuf/Internal$MapAdapter$EntryAdapter;->this$0:Lcom/android/framework/protobuf/Internal$MapAdapter;

    # getter for: Lcom/android/framework/protobuf/Internal$MapAdapter;->valueConverter:Lcom/android/framework/protobuf/Internal$MapAdapter$Converter;
    invoke-static {v1}, Lcom/android/framework/protobuf/Internal$MapAdapter;->access$000(Lcom/android/framework/protobuf/Internal$MapAdapter;)Lcom/android/framework/protobuf/Internal$MapAdapter$Converter;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/framework/protobuf/Internal$MapAdapter$Converter;->doForward(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
