.class Lcom/samsung/android/allshare/extension/impl/WM7SearchMediaGetter$SearchRequest;
.super Ljava/lang/Object;
.source "WM7SearchMediaGetter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/extension/impl/WM7SearchMediaGetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SearchRequest"
.end annotation


# instance fields
.field private mSearchCriteria:Lcom/samsung/android/allshare/media/SearchCriteria;

.field private mStartIndex:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/allshare/media/SearchCriteria;I)V
    .registers 4
    .param p1, "criteria"    # Lcom/samsung/android/allshare/media/SearchCriteria;
    .param p2, "startIndex"    # I

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/allshare/extension/impl/WM7SearchMediaGetter$SearchRequest;->mSearchCriteria:Lcom/samsung/android/allshare/media/SearchCriteria;

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/allshare/extension/impl/WM7SearchMediaGetter$SearchRequest;->mStartIndex:I

    .line 42
    iput-object p1, p0, Lcom/samsung/android/allshare/extension/impl/WM7SearchMediaGetter$SearchRequest;->mSearchCriteria:Lcom/samsung/android/allshare/media/SearchCriteria;

    .line 43
    iput p2, p0, Lcom/samsung/android/allshare/extension/impl/WM7SearchMediaGetter$SearchRequest;->mStartIndex:I

    .line 44
    return-void
.end method


# virtual methods
.method public isSame(Lcom/samsung/android/allshare/media/SearchCriteria;I)Z
    .registers 5
    .param p1, "criteria"    # Lcom/samsung/android/allshare/media/SearchCriteria;
    .param p2, "startIndex"    # I

    .line 47
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 48
    return v0

    .line 49
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/allshare/extension/impl/WM7SearchMediaGetter$SearchRequest;->mSearchCriteria:Lcom/samsung/android/allshare/media/SearchCriteria;

    invoke-virtual {p1, v1}, Lcom/samsung/android/allshare/media/SearchCriteria;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget v1, p0, Lcom/samsung/android/allshare/extension/impl/WM7SearchMediaGetter$SearchRequest;->mStartIndex:I

    if-ne v1, p2, :cond_12

    .line 50
    const/4 v0, 0x1

    return v0

    .line 51
    :cond_12
    return v0
.end method

.method public updateSearchRequest(Lcom/samsung/android/allshare/media/SearchCriteria;I)V
    .registers 3
    .param p1, "criteria"    # Lcom/samsung/android/allshare/media/SearchCriteria;
    .param p2, "startIndex"    # I

    .line 55
    iput-object p1, p0, Lcom/samsung/android/allshare/extension/impl/WM7SearchMediaGetter$SearchRequest;->mSearchCriteria:Lcom/samsung/android/allshare/media/SearchCriteria;

    .line 56
    iput p2, p0, Lcom/samsung/android/allshare/extension/impl/WM7SearchMediaGetter$SearchRequest;->mStartIndex:I

    .line 57
    return-void
.end method
