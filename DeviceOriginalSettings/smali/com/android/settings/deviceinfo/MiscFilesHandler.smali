.class public Lcom/flyme/DeviceOriginalSettings/deviceinfo/MiscFilesHandler;
.super Landroid/app/ListActivity;
.source "MiscFilesHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/DeviceOriginalSettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;,
        Lcom/flyme/DeviceOriginalSettings/deviceinfo/MiscFilesHandler$ModeCallback;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/flyme/DeviceOriginalSettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mNumBytesSelectedFormat:Ljava/lang/String;

.field private mNumSelectedFormat:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 187
    return-void
.end method

.method static synthetic access$000(Lcom/flyme/DeviceOriginalSettings/deviceinfo/MiscFilesHandler;)Lcom/flyme/DeviceOriginalSettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/deviceinfo/MiscFilesHandler;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/MiscFilesHandler;->mAdapter:Lcom/flyme/DeviceOriginalSettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/flyme/DeviceOriginalSettings/deviceinfo/MiscFilesHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/deviceinfo/MiscFilesHandler;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/MiscFilesHandler;->mNumSelectedFormat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/flyme/DeviceOriginalSettings/deviceinfo/MiscFilesHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/deviceinfo/MiscFilesHandler;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/MiscFilesHandler;->mNumBytesSelectedFormat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/flyme/DeviceOriginalSettings/deviceinfo/MiscFilesHandler;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/DeviceOriginalSettings/deviceinfo/MiscFilesHandler;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/MiscFilesHandler;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 60
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0, v2}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/MiscFilesHandler;->setFinishOnTouchOutside(Z)V

    .line 62
    const v1, 0x7f090a8d

    invoke-virtual {p0, v1}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/MiscFilesHandler;->setTitle(I)V

    .line 63
    const v1, 0x7f090a8e

    invoke-virtual {p0, v1}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/MiscFilesHandler;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/MiscFilesHandler;->mNumSelectedFormat:Ljava/lang/String;

    .line 64
    const v1, 0x7f090a8f

    invoke-virtual {p0, v1}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/MiscFilesHandler;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/MiscFilesHandler;->mNumBytesSelectedFormat:Ljava/lang/String;

    .line 65
    new-instance v1, Lcom/flyme/DeviceOriginalSettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    invoke-direct {v1, p0, p0}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;-><init>(Lcom/flyme/DeviceOriginalSettings/deviceinfo/MiscFilesHandler;Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/MiscFilesHandler;->mAdapter:Lcom/flyme/DeviceOriginalSettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    .line 66
    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/MiscFilesHandler;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/MiscFilesHandler;->mInflater:Landroid/view/LayoutInflater;

    .line 67
    const v1, 0x7f0400e5

    invoke-virtual {p0, v1}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/MiscFilesHandler;->setContentView(I)V

    .line 68
    invoke-virtual {p0}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/MiscFilesHandler;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 69
    .local v0, "lv":Landroid/widget/ListView;
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 70
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 71
    new-instance v1, Lcom/flyme/DeviceOriginalSettings/deviceinfo/MiscFilesHandler$ModeCallback;

    invoke-direct {v1, p0, p0}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/MiscFilesHandler$ModeCallback;-><init>(Lcom/flyme/DeviceOriginalSettings/deviceinfo/MiscFilesHandler;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 72
    iget-object v1, p0, Lcom/flyme/DeviceOriginalSettings/deviceinfo/MiscFilesHandler;->mAdapter:Lcom/flyme/DeviceOriginalSettings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    invoke-virtual {p0, v1}, Lcom/flyme/DeviceOriginalSettings/deviceinfo/MiscFilesHandler;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 73
    return-void
.end method
