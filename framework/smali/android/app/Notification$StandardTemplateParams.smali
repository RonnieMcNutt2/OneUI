.class Landroid/app/Notification$StandardTemplateParams;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StandardTemplateParams"
.end annotation


# static fields
.field public static final DECORATION_MINIMAL:I = 0x1

.field public static final DECORATION_PARTIAL:I = 0x2

.field public static VIEW_TYPE_BIG:I

.field public static VIEW_TYPE_GROUP_HEADER:I

.field public static VIEW_TYPE_GROUP_HEADER_EXPANDED:I

.field public static VIEW_TYPE_HEADS_UP:I

.field public static VIEW_TYPE_MINIMIZED:I

.field public static VIEW_TYPE_NORMAL:I

.field public static VIEW_TYPE_PUBLIC:I

.field public static VIEW_TYPE_UNSPECIFIED:I


# instance fields
.field allowColorization:Z

.field mAllowTextWithProgress:Z

.field mCallStyleActions:Z

.field mHeaderTextSecondary:Ljava/lang/CharSequence;

.field mHeaderless:Z

.field mHideActions:Z

.field mHideAppName:Z

.field mHideLeftIcon:Z

.field mHideProgress:Z

.field mHideRightIcon:Z

.field mHideSnoozeButton:Z

.field mHideSubText:Z

.field mHideTime:Z

.field mHideTitle:Z

.field mHighlightExpander:Z

.field mPromotedPicture:Landroid/graphics/drawable/Icon;

.field mSubText:Ljava/lang/CharSequence;

.field mText:Ljava/lang/CharSequence;

.field mTextViewId:I

.field mTitle:Ljava/lang/CharSequence;

.field mTitleViewId:I

.field mViewType:I

.field maxRemoteInputHistory:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 12782
    const/4 v0, 0x0

    sput v0, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_UNSPECIFIED:I

    .line 12783
    const/4 v0, 0x1

    sput v0, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_NORMAL:I

    .line 12784
    const/4 v0, 0x2

    sput v0, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_BIG:I

    .line 12785
    const/4 v0, 0x3

    sput v0, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_HEADS_UP:I

    .line 12786
    const/4 v0, 0x4

    sput v0, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_MINIMIZED:I

    .line 12787
    const/4 v0, 0x5

    sput v0, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_PUBLIC:I

    .line 12788
    const/4 v0, 0x6

    sput v0, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_GROUP_HEADER:I

    .line 12790
    const/4 v0, 0x7

    sput v0, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_GROUP_HEADER_EXPANDED:I

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 12765
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12792
    sget v0, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_UNSPECIFIED:I

    iput v0, p0, Landroid/app/Notification$StandardTemplateParams;->mViewType:I

    .line 12812
    const/4 v0, 0x3

    iput v0, p0, Landroid/app/Notification$StandardTemplateParams;->maxRemoteInputHistory:I

    .line 12813
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->allowColorization:Z

    .line 12814
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mHighlightExpander:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Notification$StandardTemplateParams-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/app/Notification$StandardTemplateParams;-><init>()V

    return-void
.end method


# virtual methods
.method final allowTextWithProgress(Z)Landroid/app/Notification$StandardTemplateParams;
    .registers 2
    .param p1, "allowTextWithProgress"    # Z

    .line 12893
    iput-boolean p1, p0, Landroid/app/Notification$StandardTemplateParams;->mAllowTextWithProgress:Z

    .line 12894
    return-object p0
.end method

.method final callStyleActions(Z)Landroid/app/Notification$StandardTemplateParams;
    .registers 2
    .param p1, "callStyleActions"    # Z

    .line 12888
    iput-boolean p1, p0, Landroid/app/Notification$StandardTemplateParams;->mCallStyleActions:Z

    .line 12889
    return-object p0
.end method

.method public decorationType(I)Landroid/app/Notification$StandardTemplateParams;
    .registers 4
    .param p1, "decorationType"    # I

    .line 12977
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Notification$StandardTemplateParams;->hideTitle(Z)Landroid/app/Notification$StandardTemplateParams;

    .line 12980
    const/4 v1, 0x0

    if-gt p1, v0, :cond_8

    goto :goto_9

    :cond_8
    move v0, v1

    .line 12981
    .local v0, "hideOtherFields":Z
    :goto_9
    invoke-virtual {p0, v1}, Landroid/app/Notification$StandardTemplateParams;->hideLeftIcon(Z)Landroid/app/Notification$StandardTemplateParams;

    .line 12982
    invoke-virtual {p0, v0}, Landroid/app/Notification$StandardTemplateParams;->hideRightIcon(Z)Landroid/app/Notification$StandardTemplateParams;

    .line 12983
    invoke-virtual {p0, v0}, Landroid/app/Notification$StandardTemplateParams;->hideProgress(Z)Landroid/app/Notification$StandardTemplateParams;

    .line 12984
    invoke-virtual {p0, v0}, Landroid/app/Notification$StandardTemplateParams;->hideActions(Z)Landroid/app/Notification$StandardTemplateParams;

    .line 12985
    return-object p0
.end method

.method final disallowColorization()Landroid/app/Notification$StandardTemplateParams;
    .registers 2

    .line 12949
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->allowColorization:Z

    .line 12950
    return-object p0
.end method

.method final fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;
    .registers 4
    .param p1, "b"    # Landroid/app/Notification$Builder;

    .line 12959
    invoke-static {p1}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 12960
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "android.title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/app/Notification$Builder;->-$$Nest$mprocessLegacyText(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification$StandardTemplateParams;->mTitle:Ljava/lang/CharSequence;

    .line 12961
    const-string v1, "android.text"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/app/Notification$Builder;->-$$Nest$mprocessLegacyText(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification$StandardTemplateParams;->mText:Ljava/lang/CharSequence;

    .line 12962
    const-string v1, "android.subText"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification$StandardTemplateParams;->mSubText:Ljava/lang/CharSequence;

    .line 12963
    return-object p0
.end method

.method final hasTitle()Z
    .registers 2

    .line 12844
    iget-object v0, p0, Landroid/app/Notification$StandardTemplateParams;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mHideTitle:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method final headerTextSecondary(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;
    .registers 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 12933
    iput-object p1, p0, Landroid/app/Notification$StandardTemplateParams;->mHeaderTextSecondary:Ljava/lang/CharSequence;

    .line 12934
    return-object p0
.end method

.method public headerless(Z)Landroid/app/Notification$StandardTemplateParams;
    .registers 2
    .param p1, "headerless"    # Z

    .line 12853
    iput-boolean p1, p0, Landroid/app/Notification$StandardTemplateParams;->mHeaderless:Z

    .line 12854
    return-object p0
.end method

.method final hideActions(Z)Landroid/app/Notification$StandardTemplateParams;
    .registers 2
    .param p1, "hideActions"    # Z

    .line 12873
    iput-boolean p1, p0, Landroid/app/Notification$StandardTemplateParams;->mHideActions:Z

    .line 12874
    return-object p0
.end method

.method public hideAppName(Z)Landroid/app/Notification$StandardTemplateParams;
    .registers 2
    .param p1, "hideAppName"    # Z

    .line 12858
    iput-boolean p1, p0, Landroid/app/Notification$StandardTemplateParams;->mHideAppName:Z

    .line 12859
    return-object p0
.end method

.method final hideLeftIcon(Z)Landroid/app/Notification$StandardTemplateParams;
    .registers 2
    .param p1, "hideLeftIcon"    # Z

    .line 12939
    iput-boolean p1, p0, Landroid/app/Notification$StandardTemplateParams;->mHideLeftIcon:Z

    .line 12940
    return-object p0
.end method

.method final hideProgress(Z)Landroid/app/Notification$StandardTemplateParams;
    .registers 2
    .param p1, "hideProgress"    # Z

    .line 12878
    iput-boolean p1, p0, Landroid/app/Notification$StandardTemplateParams;->mHideProgress:Z

    .line 12879
    return-object p0
.end method

.method final hideRightIcon(Z)Landroid/app/Notification$StandardTemplateParams;
    .registers 2
    .param p1, "hideRightIcon"    # Z

    .line 12944
    iput-boolean p1, p0, Landroid/app/Notification$StandardTemplateParams;->mHideRightIcon:Z

    .line 12945
    return-object p0
.end method

.method final hideSnoozeButton(Z)Landroid/app/Notification$StandardTemplateParams;
    .registers 2
    .param p1, "hideSnoozeButton"    # Z

    .line 12898
    iput-boolean p1, p0, Landroid/app/Notification$StandardTemplateParams;->mHideSnoozeButton:Z

    .line 12899
    return-object p0
.end method

.method public hideSubText(Z)Landroid/app/Notification$StandardTemplateParams;
    .registers 2
    .param p1, "hideSubText"    # Z

    .line 12863
    iput-boolean p1, p0, Landroid/app/Notification$StandardTemplateParams;->mHideSubText:Z

    .line 12864
    return-object p0
.end method

.method public hideTime(Z)Landroid/app/Notification$StandardTemplateParams;
    .registers 2
    .param p1, "hideTime"    # Z

    .line 12868
    iput-boolean p1, p0, Landroid/app/Notification$StandardTemplateParams;->mHideTime:Z

    .line 12869
    return-object p0
.end method

.method final hideTitle(Z)Landroid/app/Notification$StandardTemplateParams;
    .registers 2
    .param p1, "hideTitle"    # Z

    .line 12883
    iput-boolean p1, p0, Landroid/app/Notification$StandardTemplateParams;->mHideTitle:Z

    .line 12884
    return-object p0
.end method

.method final highlightExpander(Z)Landroid/app/Notification$StandardTemplateParams;
    .registers 2
    .param p1, "highlight"    # Z

    .line 12954
    iput-boolean p1, p0, Landroid/app/Notification$StandardTemplateParams;->mHighlightExpander:Z

    .line 12955
    return-object p0
.end method

.method final promotedPicture(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$StandardTemplateParams;
    .registers 2
    .param p1, "promotedPicture"    # Landroid/graphics/drawable/Icon;

    .line 12903
    iput-object p1, p0, Landroid/app/Notification$StandardTemplateParams;->mPromotedPicture:Landroid/graphics/drawable/Icon;

    .line 12904
    return-object p0
.end method

.method final reset()Landroid/app/Notification$StandardTemplateParams;
    .registers 4

    .line 12817
    sget v0, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_UNSPECIFIED:I

    iput v0, p0, Landroid/app/Notification$StandardTemplateParams;->mViewType:I

    .line 12818
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mHeaderless:Z

    .line 12819
    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mHideAppName:Z

    .line 12820
    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mHideTitle:Z

    .line 12821
    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mHideSubText:Z

    .line 12822
    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mHideTime:Z

    .line 12823
    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mHideActions:Z

    .line 12824
    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mHideProgress:Z

    .line 12825
    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mHideSnoozeButton:Z

    .line 12826
    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mHideLeftIcon:Z

    .line 12827
    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mHideRightIcon:Z

    .line 12828
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/Notification$StandardTemplateParams;->mPromotedPicture:Landroid/graphics/drawable/Icon;

    .line 12829
    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mCallStyleActions:Z

    .line 12830
    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mAllowTextWithProgress:Z

    .line 12831
    const v2, 0x1020016

    iput v2, p0, Landroid/app/Notification$StandardTemplateParams;->mTitleViewId:I

    .line 12832
    const v2, 0x1020619

    iput v2, p0, Landroid/app/Notification$StandardTemplateParams;->mTextViewId:I

    .line 12833
    iput-object v1, p0, Landroid/app/Notification$StandardTemplateParams;->mTitle:Ljava/lang/CharSequence;

    .line 12834
    iput-object v1, p0, Landroid/app/Notification$StandardTemplateParams;->mText:Ljava/lang/CharSequence;

    .line 12835
    iput-object v1, p0, Landroid/app/Notification$StandardTemplateParams;->mSubText:Ljava/lang/CharSequence;

    .line 12836
    iput-object v1, p0, Landroid/app/Notification$StandardTemplateParams;->mHeaderTextSecondary:Ljava/lang/CharSequence;

    .line 12837
    const/4 v1, 0x3

    iput v1, p0, Landroid/app/Notification$StandardTemplateParams;->maxRemoteInputHistory:I

    .line 12838
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/Notification$StandardTemplateParams;->allowColorization:Z

    .line 12839
    iput-boolean v0, p0, Landroid/app/Notification$StandardTemplateParams;->mHighlightExpander:Z

    .line 12840
    return-object p0
.end method

.method public setMaxRemoteInputHistory(I)Landroid/app/Notification$StandardTemplateParams;
    .registers 2
    .param p1, "maxRemoteInputHistory"    # I

    .line 12972
    iput p1, p0, Landroid/app/Notification$StandardTemplateParams;->maxRemoteInputHistory:I

    .line 12973
    return-object p0
.end method

.method final summaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;
    .registers 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 12928
    iput-object p1, p0, Landroid/app/Notification$StandardTemplateParams;->mSubText:Ljava/lang/CharSequence;

    .line 12929
    return-object p0
.end method

.method final text(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;
    .registers 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 12923
    iput-object p1, p0, Landroid/app/Notification$StandardTemplateParams;->mText:Ljava/lang/CharSequence;

    .line 12924
    return-object p0
.end method

.method public textViewId(I)Landroid/app/Notification$StandardTemplateParams;
    .registers 2
    .param p1, "textViewId"    # I

    .line 12913
    iput p1, p0, Landroid/app/Notification$StandardTemplateParams;->mTextViewId:I

    .line 12914
    return-object p0
.end method

.method final title(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;
    .registers 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 12918
    iput-object p1, p0, Landroid/app/Notification$StandardTemplateParams;->mTitle:Ljava/lang/CharSequence;

    .line 12919
    return-object p0
.end method

.method public titleViewId(I)Landroid/app/Notification$StandardTemplateParams;
    .registers 2
    .param p1, "titleViewId"    # I

    .line 12908
    iput p1, p0, Landroid/app/Notification$StandardTemplateParams;->mTitleViewId:I

    .line 12909
    return-object p0
.end method

.method final viewType(I)Landroid/app/Notification$StandardTemplateParams;
    .registers 2
    .param p1, "viewType"    # I

    .line 12848
    iput p1, p0, Landroid/app/Notification$StandardTemplateParams;->mViewType:I

    .line 12849
    return-object p0
.end method
