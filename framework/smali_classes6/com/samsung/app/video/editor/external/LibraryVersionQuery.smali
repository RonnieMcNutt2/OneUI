.class public Lcom/samsung/app/video/editor/external/LibraryVersionQuery;
.super Ljava/lang/Object;
.source "LibraryVersionQuery.java"

# interfaces
.implements Lcom/samsung/android/util/LibraryVersionQuery;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLibraryVersion()Ljava/lang/String;
    .registers 2

    .line 11
    const-string v0, "5.2.00"

    return-object v0
.end method
