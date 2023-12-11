.class public Lcom/samsung/android/allshare/media/Playlist;
.super Ljava/lang/Object;
.source "Playlist.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/allshare/media/Playlist$ImageListBuilder;,
        Lcom/samsung/android/allshare/media/Playlist$AudioListBuilder;,
        Lcom/samsung/android/allshare/media/Playlist$VideoListBuilder;
    }
.end annotation


# instance fields
.field private mPlayListType:Lcom/samsung/android/allshare/Item$MediaType;

.field private final mPlaylist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/samsung/android/allshare/media/Playlist$AudioListBuilder;)V
    .registers 3
    .param p1, "builder"    # Lcom/samsung/android/allshare/media/Playlist$AudioListBuilder;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    sget-object v0, Lcom/samsung/android/allshare/Item$MediaType;->ITEM_UNKNOWN:Lcom/samsung/android/allshare/Item$MediaType;

    iput-object v0, p0, Lcom/samsung/android/allshare/media/Playlist;->mPlayListType:Lcom/samsung/android/allshare/Item$MediaType;

    .line 48
    invoke-static {p1}, Lcom/samsung/android/allshare/media/Playlist$AudioListBuilder;->-$$Nest$fgetmPlaylist(Lcom/samsung/android/allshare/media/Playlist$AudioListBuilder;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/allshare/media/Playlist;->mPlaylist:Ljava/util/ArrayList;

    .line 49
    sget-object v0, Lcom/samsung/android/allshare/Item$MediaType;->ITEM_AUDIO:Lcom/samsung/android/allshare/Item$MediaType;

    iput-object v0, p0, Lcom/samsung/android/allshare/media/Playlist;->mPlayListType:Lcom/samsung/android/allshare/Item$MediaType;

    .line 50
    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/allshare/media/Playlist$AudioListBuilder;Lcom/samsung/android/allshare/media/Playlist-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/allshare/media/Playlist;-><init>(Lcom/samsung/android/allshare/media/Playlist$AudioListBuilder;)V

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/allshare/media/Playlist$ImageListBuilder;)V
    .registers 3
    .param p1, "builder"    # Lcom/samsung/android/allshare/media/Playlist$ImageListBuilder;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    sget-object v0, Lcom/samsung/android/allshare/Item$MediaType;->ITEM_UNKNOWN:Lcom/samsung/android/allshare/Item$MediaType;

    iput-object v0, p0, Lcom/samsung/android/allshare/media/Playlist;->mPlayListType:Lcom/samsung/android/allshare/Item$MediaType;

    .line 43
    invoke-static {p1}, Lcom/samsung/android/allshare/media/Playlist$ImageListBuilder;->-$$Nest$fgetmPlaylist(Lcom/samsung/android/allshare/media/Playlist$ImageListBuilder;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/allshare/media/Playlist;->mPlaylist:Ljava/util/ArrayList;

    .line 44
    sget-object v0, Lcom/samsung/android/allshare/Item$MediaType;->ITEM_IMAGE:Lcom/samsung/android/allshare/Item$MediaType;

    iput-object v0, p0, Lcom/samsung/android/allshare/media/Playlist;->mPlayListType:Lcom/samsung/android/allshare/Item$MediaType;

    .line 45
    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/allshare/media/Playlist$ImageListBuilder;Lcom/samsung/android/allshare/media/Playlist-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/allshare/media/Playlist;-><init>(Lcom/samsung/android/allshare/media/Playlist$ImageListBuilder;)V

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/allshare/media/Playlist$VideoListBuilder;)V
    .registers 3
    .param p1, "builder"    # Lcom/samsung/android/allshare/media/Playlist$VideoListBuilder;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    sget-object v0, Lcom/samsung/android/allshare/Item$MediaType;->ITEM_UNKNOWN:Lcom/samsung/android/allshare/Item$MediaType;

    iput-object v0, p0, Lcom/samsung/android/allshare/media/Playlist;->mPlayListType:Lcom/samsung/android/allshare/Item$MediaType;

    .line 53
    invoke-static {p1}, Lcom/samsung/android/allshare/media/Playlist$VideoListBuilder;->-$$Nest$fgetmPlaylist(Lcom/samsung/android/allshare/media/Playlist$VideoListBuilder;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/allshare/media/Playlist;->mPlaylist:Ljava/util/ArrayList;

    .line 54
    sget-object v0, Lcom/samsung/android/allshare/Item$MediaType;->ITEM_VIDEO:Lcom/samsung/android/allshare/Item$MediaType;

    iput-object v0, p0, Lcom/samsung/android/allshare/media/Playlist;->mPlayListType:Lcom/samsung/android/allshare/Item$MediaType;

    .line 55
    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/allshare/media/Playlist$VideoListBuilder;Lcom/samsung/android/allshare/media/Playlist-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/allshare/media/Playlist;-><init>(Lcom/samsung/android/allshare/media/Playlist$VideoListBuilder;)V

    return-void
.end method


# virtual methods
.method public final getMediaType()Lcom/samsung/android/allshare/Item$MediaType;
    .registers 2

    .line 210
    iget-object v0, p0, Lcom/samsung/android/allshare/media/Playlist;->mPlayListType:Lcom/samsung/android/allshare/Item$MediaType;

    return-object v0
.end method

.method public final getPlaylist()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Item;",
            ">;"
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/samsung/android/allshare/media/Playlist;->mPlaylist:Ljava/util/ArrayList;

    if-nez v0, :cond_a

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 198
    :cond_a
    return-object v0
.end method
