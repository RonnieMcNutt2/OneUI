.class public Lcom/samsung/android/allshare/media/SearchCriteria$Builder;
.super Ljava/lang/Object;
.source "SearchCriteria.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/media/SearchCriteria;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mKeyword:Ljava/lang/String;

.field private mMediaTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Item$MediaType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmKeyword(Lcom/samsung/android/allshare/media/SearchCriteria$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/allshare/media/SearchCriteria$Builder;->mKeyword:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMediaTypes(Lcom/samsung/android/allshare/media/SearchCriteria$Builder;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/allshare/media/SearchCriteria$Builder;->mMediaTypes:Ljava/util/ArrayList;

    return-object p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    iget-object v0, p0, Lcom/samsung/android/allshare/media/SearchCriteria$Builder;->mKeyword:Ljava/lang/String;

    if-nez v0, :cond_b

    .line 184
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/allshare/media/SearchCriteria$Builder;->mKeyword:Ljava/lang/String;

    .line 185
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/allshare/media/SearchCriteria$Builder;->mMediaTypes:Ljava/util/ArrayList;

    .line 186
    return-void
.end method


# virtual methods
.method public addItemType(Lcom/samsung/android/allshare/Item$MediaType;)Lcom/samsung/android/allshare/media/SearchCriteria$Builder;
    .registers 3
    .param p1, "type"    # Lcom/samsung/android/allshare/Item$MediaType;

    .line 217
    if-eqz p1, :cond_7

    .line 218
    iget-object v0, p0, Lcom/samsung/android/allshare/media/SearchCriteria$Builder;->mMediaTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    :cond_7
    return-object p0
.end method

.method public build()Lcom/samsung/android/allshare/media/SearchCriteria;
    .registers 3

    .line 232
    new-instance v0, Lcom/samsung/android/allshare/media/SearchCriteria;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/allshare/media/SearchCriteria;-><init>(Lcom/samsung/android/allshare/media/SearchCriteria$Builder;Lcom/samsung/android/allshare/media/SearchCriteria-IA;)V

    return-object v0
.end method

.method public setKeyword(Ljava/lang/String;)Lcom/samsung/android/allshare/media/SearchCriteria$Builder;
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .line 199
    iput-object p1, p0, Lcom/samsung/android/allshare/media/SearchCriteria$Builder;->mKeyword:Ljava/lang/String;

    .line 200
    return-object p0
.end method
