.class public final Landroid/content/res/FontResourcesParser$FontFamilyFilesResourceEntry;
.super Ljava/lang/Object;
.source "FontResourcesParser.java"

# interfaces
.implements Landroid/content/res/FontResourcesParser$FamilyResourceEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/FontResourcesParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FontFamilyFilesResourceEntry"
.end annotation


# instance fields
.field private final mEntries:[Landroid/content/res/FontResourcesParser$FontFileResourceEntry;


# direct methods
.method public constructor <init>([Landroid/content/res/FontResourcesParser$FontFileResourceEntry;)V
    .registers 2
    .param p1, "entries"    # [Landroid/content/res/FontResourcesParser$FontFileResourceEntry;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p1, p0, Landroid/content/res/FontResourcesParser$FontFamilyFilesResourceEntry;->mEntries:[Landroid/content/res/FontResourcesParser$FontFileResourceEntry;

    .line 133
    return-void
.end method


# virtual methods
.method public getEntries()[Landroid/content/res/FontResourcesParser$FontFileResourceEntry;
    .registers 2

    .line 136
    iget-object v0, p0, Landroid/content/res/FontResourcesParser$FontFamilyFilesResourceEntry;->mEntries:[Landroid/content/res/FontResourcesParser$FontFileResourceEntry;

    return-object v0
.end method
