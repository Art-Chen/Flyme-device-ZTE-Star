.class Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;
.super Landroid/widget/BaseAdapter;
.source "ManageApplications.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;
.implements Landroid/widget/Filterable;
.implements Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ApplicationsAdapter"
.end annotation


# instance fields
.field private final mActive:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mBaseEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field mCurFilterPrefix:Ljava/lang/CharSequence;

.field private mEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mFilter:Landroid/widget/Filter;

.field private final mFilterMode:I

.field private mLastSortMode:I

.field private mResumed:Z

.field private final mSession:Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$Session;

.field private final mState:Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState;

.field private final mTab:Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;

.field private mWaitingForData:Z

.field private mWhichSize:I


# direct methods
.method public constructor <init>(Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState;Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;I)V
    .locals 1
    .param p1, "state"    # Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState;
    .param p2, "tab"    # Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;
    .param p3, "filterMode"    # I

    .prologue
    .line 595
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 565
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    .line 570
    const/4 v0, -0x1

    iput v0, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    .line 572
    const/4 v0, 0x0

    iput v0, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    .line 575
    new-instance v0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter$1;

    invoke-direct {v0, p0}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter$1;-><init>(Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;)V

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mFilter:Landroid/widget/Filter;

    .line 596
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState;

    .line 597
    invoke-virtual {p1, p0}, Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState;->newSession(Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$Callbacks;)Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$Session;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$Session;

    .line 598
    iput-object p2, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;

    .line 599
    iget-object v0, p2, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;->mOwner:Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;

    invoke-virtual {v0}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    .line 600
    iput p3, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mFilterMode:I

    .line 601
    return-void
.end method

.method static synthetic access$500(Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;

    .prologue
    .line 559
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$602(Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 559
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$700(Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;)Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;

    .prologue
    .line 559
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;

    return-object v0
.end method


# virtual methods
.method applyPrefixFilter(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "prefix"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$AppEntry;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 706
    .local p2, "origEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$AppEntry;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_2

    :cond_0
    move-object v2, p2

    .line 720
    :cond_1
    return-object v2

    .line 709
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 710
    .local v4, "prefixStr":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 711
    .local v5, "spacePrefixStr":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 713
    .local v2, "newEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$AppEntry;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 714
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$AppEntry;

    .line 715
    .local v0, "entry":Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$AppEntry;
    invoke-virtual {v0}, Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$AppEntry;->getNormalizedLabel()Ljava/lang/String;

    move-result-object v3

    .line 716
    .local v3, "nlabel":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_4

    .line 717
    :cond_3
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 713
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getAppEntry(I)Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$AppEntry;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 796
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$AppEntry;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 788
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 840
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mFilter:Landroid/widget/Filter;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 792
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 800
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$AppEntry;->id:J

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 806
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;

    iget-object v2, v2, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;->mInflater:Landroid/view/LayoutInflater;

    invoke-static {v2, p2}, Lcom/flyme/DeviceOriginalSettings/applications/AppViewHolder;->createOrRecycle(Landroid/view/LayoutInflater;Landroid/view/View;)Lcom/flyme/DeviceOriginalSettings/applications/AppViewHolder;

    move-result-object v1

    .line 807
    .local v1, "holder":Lcom/flyme/DeviceOriginalSettings/applications/AppViewHolder;
    iget-object p2, v1, Lcom/flyme/DeviceOriginalSettings/applications/AppViewHolder;->rootView:Landroid/view/View;

    .line 810
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$AppEntry;

    .line 811
    .local v0, "entry":Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$AppEntry;
    monitor-enter v0

    .line 812
    :try_start_0
    iput-object v0, v1, Lcom/flyme/DeviceOriginalSettings/applications/AppViewHolder;->entry:Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$AppEntry;

    .line 813
    iget-object v2, v0, Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 814
    iget-object v2, v1, Lcom/flyme/DeviceOriginalSettings/applications/AppViewHolder;->appName:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 816
    :cond_0
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState;

    invoke-virtual {v2, v0}, Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState;->ensureIcon(Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$AppEntry;)V

    .line 817
    iget-object v2, v0, Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 818
    iget-object v2, v1, Lcom/flyme/DeviceOriginalSettings/applications/AppViewHolder;->appIcon:Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 820
    :cond_1
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;

    iget-object v2, v2, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;->mInvalidSizeStr:Ljava/lang/CharSequence;

    iget v3, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    invoke-virtual {v1, v2, v3}, Lcom/flyme/DeviceOriginalSettings/applications/AppViewHolder;->updateSizeText(Ljava/lang/CharSequence;I)V

    .line 821
    iget-object v2, v0, Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x800000

    and-int/2addr v2, v3

    if-nez v2, :cond_2

    .line 822
    iget-object v2, v1, Lcom/flyme/DeviceOriginalSettings/applications/AppViewHolder;->disabled:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 823
    iget-object v2, v1, Lcom/flyme/DeviceOriginalSettings/applications/AppViewHolder;->disabled:Landroid/widget/TextView;

    const v3, 0x7f0907ca

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 830
    :goto_0
    iget-object v2, v1, Lcom/flyme/DeviceOriginalSettings/applications/AppViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 832
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 833
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 834
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 835
    return-object p2

    .line 824
    :cond_2
    :try_start_1
    iget-object v2, v0, Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v2, :cond_3

    .line 825
    iget-object v2, v1, Lcom/flyme/DeviceOriginalSettings/applications/AppViewHolder;->disabled:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 826
    iget-object v2, v1, Lcom/flyme/DeviceOriginalSettings/applications/AppViewHolder;->disabled:Landroid/widget/TextView;

    const v3, 0x7f0907c9

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 832
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 828
    :cond_3
    :try_start_2
    iget-object v2, v1, Lcom/flyme/DeviceOriginalSettings/applications/AppViewHolder;->disabled:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public onAllSizesComputed()V
    .locals 2

    .prologue
    .line 781
    iget v0, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 782
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    .line 784
    :cond_0
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;

    invoke-virtual {v0}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;->updateStorageUsage()V

    .line 785
    return-void
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 845
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 846
    return-void
.end method

.method public onPackageIconChanged()V
    .locals 0

    .prologue
    .line 755
    return-void
.end method

.method public onPackageListChanged()V
    .locals 1

    .prologue
    .line 748
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    .line 749
    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 759
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 760
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/DeviceOriginalSettings/applications/AppViewHolder;

    .line 761
    .local v0, "holder":Lcom/flyme/DeviceOriginalSettings/applications/AppViewHolder;
    iget-object v2, v0, Lcom/flyme/DeviceOriginalSettings/applications/AppViewHolder;->entry:Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 762
    iget-object v3, v0, Lcom/flyme/DeviceOriginalSettings/applications/AppViewHolder;->entry:Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$AppEntry;

    monitor-enter v3

    .line 763
    :try_start_0
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;

    iget-object v2, v2, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;->mInvalidSizeStr:Ljava/lang/CharSequence;

    iget v4, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    invoke-virtual {v0, v2, v4}, Lcom/flyme/DeviceOriginalSettings/applications/AppViewHolder;->updateSizeText(Ljava/lang/CharSequence;I)V

    .line 764
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 765
    iget-object v2, v0, Lcom/flyme/DeviceOriginalSettings/applications/AppViewHolder;->entry:Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;

    iget-object v3, v3, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;->mOwner:Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;

    # getter for: Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;
    invoke-static {v3}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->access$1000(Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 771
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    .line 773
    :cond_0
    iget-object v2, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;

    invoke-virtual {v2}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;->updateStorageUsage()V

    .line 777
    .end local v0    # "holder":Lcom/flyme/DeviceOriginalSettings/applications/AppViewHolder;
    :cond_1
    return-void

    .line 764
    .restart local v0    # "holder":Lcom/flyme/DeviceOriginalSettings/applications/AppViewHolder;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 759
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$AppEntry;>;"
    const/4 v3, 0x0

    .line 731
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;

    # getter for: Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;->access$900(Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 732
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;

    # getter for: Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;->access$900(Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    const v2, 0x10a0001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 734
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;

    # getter for: Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;->access$800(Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    const/high16 v2, 0x10a0000

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 737
    :cond_0
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;

    # getter for: Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;->access$800(Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 738
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;

    # getter for: Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;->access$900(Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 739
    iput-boolean v3, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mWaitingForData:Z

    .line 740
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    .line 741
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mCurFilterPrefix:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->applyPrefixFilter(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    .line 742
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->notifyDataSetChanged()V

    .line 743
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;

    invoke-virtual {v0}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;->updateStorageUsage()V

    .line 744
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 1
    .param p1, "running"    # Z

    .prologue
    .line 726
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;

    iget-object v0, v0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;->mOwner:Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;

    invoke-virtual {v0}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 727
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 616
    iget-boolean v0, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    if-eqz v0, :cond_0

    .line 617
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    .line 618
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$Session;->pause()V

    .line 620
    :cond_0
    return-void
.end method

.method public rebuild(I)V
    .locals 1
    .param p1, "sort"    # I

    .prologue
    .line 627
    iget v0, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    if-ne p1, v0, :cond_0

    .line 632
    :goto_0
    return-void

    .line 630
    :cond_0
    iput p1, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    .line 631
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    goto :goto_0
.end method

.method public rebuild(Z)V
    .locals 8
    .param p1, "eraseold"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 638
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v1

    .line 639
    .local v1, "emulated":Z
    if-eqz v1, :cond_1

    .line 640
    iput v6, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    .line 644
    :goto_0
    iget v4, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mFilterMode:I

    packed-switch v4, :pswitch_data_0

    .line 658
    sget-object v3, Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState;->ALL_ENABLED_FILTER:Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$AppFilter;

    .line 661
    .local v3, "filterObj":Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$AppFilter;
    :cond_0
    :goto_1
    iget v4, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    packed-switch v4, :pswitch_data_1

    .line 676
    sget-object v0, Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    .line 679
    .local v0, "comparatorObj":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$AppEntry;>;"
    :goto_2
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$Session;

    invoke-virtual {v4, v3, v0}, Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$Session;->rebuild(Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 681
    .local v2, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$AppEntry;>;"
    if-nez v2, :cond_2

    if-nez p1, :cond_2

    .line 702
    :goto_3
    return-void

    .line 642
    .end local v0    # "comparatorObj":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$AppEntry;>;"
    .end local v2    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$AppEntry;>;"
    .end local v3    # "filterObj":Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$AppFilter;
    :cond_1
    iput v7, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    goto :goto_0

    .line 646
    :pswitch_0
    sget-object v3, Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState;->THIRD_PARTY_FILTER:Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$AppFilter;

    .line 647
    .restart local v3    # "filterObj":Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$AppFilter;
    goto :goto_1

    .line 649
    .end local v3    # "filterObj":Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$AppFilter;
    :pswitch_1
    sget-object v3, Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState;->ON_SD_CARD_FILTER:Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$AppFilter;

    .line 650
    .restart local v3    # "filterObj":Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$AppFilter;
    if-nez v1, :cond_0

    .line 651
    const/4 v4, 0x2

    iput v4, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    goto :goto_1

    .line 655
    .end local v3    # "filterObj":Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$AppFilter;
    :pswitch_2
    sget-object v3, Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState;->DISABLED_FILTER:Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$AppFilter;

    .line 656
    .restart local v3    # "filterObj":Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$AppFilter;
    goto :goto_1

    .line 663
    :pswitch_3
    iget v4, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    packed-switch v4, :pswitch_data_2

    .line 671
    sget-object v0, Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState;->SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 672
    .restart local v0    # "comparatorObj":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$AppEntry;>;"
    goto :goto_2

    .line 665
    .end local v0    # "comparatorObj":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$AppEntry;>;"
    :pswitch_4
    sget-object v0, Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState;->INTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 666
    .restart local v0    # "comparatorObj":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$AppEntry;>;"
    goto :goto_2

    .line 668
    .end local v0    # "comparatorObj":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$AppEntry;>;"
    :pswitch_5
    sget-object v0, Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState;->EXTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 669
    .restart local v0    # "comparatorObj":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$AppEntry;>;"
    goto :goto_2

    .line 685
    .restart local v2    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$AppEntry;>;"
    :cond_2
    iput-object v2, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    .line 686
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    .line 687
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mCurFilterPrefix:Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    invoke-virtual {p0, v4, v5}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->applyPrefixFilter(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    .line 691
    :goto_4
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->notifyDataSetChanged()V

    .line 692
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;

    invoke-virtual {v4}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;->updateStorageUsage()V

    .line 694
    if-nez v2, :cond_4

    .line 695
    iput-boolean v7, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mWaitingForData:Z

    .line 696
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;

    # getter for: Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;
    invoke-static {v4}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;->access$800(Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 697
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;

    # getter for: Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;
    invoke-static {v4}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;->access$900(Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 689
    :cond_3
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    goto :goto_4

    .line 699
    :cond_4
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;

    # getter for: Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;
    invoke-static {v4}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;->access$800(Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 700
    iget-object v4, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;

    # getter for: Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;
    invoke-static {v4}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;->access$900(Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$TabInfo;)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 644
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 661
    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_3
    .end packed-switch

    .line 663
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public release()V
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$Session;->release()V

    .line 624
    return-void
.end method

.method public resume(I)V
    .locals 2
    .param p1, "sort"    # I

    .prologue
    const/4 v1, 0x1

    .line 605
    iget-boolean v0, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    if-nez v0, :cond_0

    .line 606
    iput-boolean v1, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    .line 607
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/flyme/DeviceOriginalSettings/applications/ApplicationsState$Session;->resume()V

    .line 608
    iput p1, p0, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    .line 609
    invoke-virtual {p0, v1}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    .line 613
    :goto_0
    return-void

    .line 611
    :cond_0
    invoke-virtual {p0, p1}, Lcom/flyme/DeviceOriginalSettings/applications/ManageApplications$ApplicationsAdapter;->rebuild(I)V

    goto :goto_0
.end method
