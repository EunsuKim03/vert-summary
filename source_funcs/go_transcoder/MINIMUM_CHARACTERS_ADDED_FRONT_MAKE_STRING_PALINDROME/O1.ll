; ModuleID = 'main'
source_filename = "main"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-musleabihf"

%"internal/task.Task" = type { ptr, ptr, i64, %"sync/atomic.noCopy", %"internal/task.state", i8, i1, i8, ptr }
%"sync/atomic.noCopy" = type {}
%"internal/task.state" = type { i64, ptr, i64, i64, ptr, %"internal/task.Semaphore" }
%"internal/task.Semaphore" = type { %"internal/futex.Futex" }
%"internal/futex.Futex" = type { %"sync/atomic.Bool" }
%"sync/atomic.Bool" = type { %"sync/atomic.noCopy", i32 }
%runtime._string = type { ptr, i64 }
%runtime.elfHeader = type { i32, i8, i8, i8, i8, i8, [7 x i8], i16, i16, i32, i64, i64, i64, i32, i16, i16, i16, i16, i16, i16 }

@"internal/task.activeTasks" = internal unnamed_addr global ptr @"internal/task.mainTask", align 8, !dbg !0
@"internal/task.mainTask" = internal global %"internal/task.Task" zeroinitializer, align 8, !dbg !50
@"internal/task$string" = internal unnamed_addr constant [30 x i8] c"sync: unlock of unlocked Mutex", align 1, !dbg !52
@"internal/task$pack" = internal unnamed_addr constant { %runtime._string } { %runtime._string { ptr @"internal/task$string", i64 30 } }
@"internal/task.numCPU" = internal global i32 0, align 4, !dbg !58
@"internal/task.activeTaskLock" = internal global %"internal/task.Semaphore" zeroinitializer, align 4, !dbg !61
@"internal/task$string.7" = internal unnamed_addr constant [20 x i8] c"unknown current task", align 1, !dbg !65
@"internal/task.otherGoroutines" = internal unnamed_addr global i32 0, align 4, !dbg !70
@"internal/task$string.13" = internal unnamed_addr constant [17 x i8] c"taskExited failed", align 1, !dbg !72
@"internal/task.scanWaitGroup" = internal global %"internal/task.Semaphore" zeroinitializer, align 4, !dbg !77
@"internal/task.gcState" = internal global %"internal/futex.Futex" zeroinitializer, align 4, !dbg !83
@"reflect/types.type:basic:string" = internal constant { i8, ptr } { i8 81, ptr @"reflect/types.type:pointer:basic:string" }, align 8, !dbg !85
@"reflect/types.type:pointer:basic:string" = internal constant { i8, i16, ptr } { i8 -43, i16 0, ptr @"reflect/types.type:basic:string" }, align 8, !dbg !93
@runtime.gcLock = internal global %"internal/task.Semaphore" zeroinitializer, align 4, !dbg !100
@__ehdr_start = external global %runtime.elfHeader, align 8
@"runtime$string.12" = internal unnamed_addr constant [7 x i8] c"panic: ", align 1, !dbg !103
@"runtime$string.13" = internal unnamed_addr constant [24 x i8] c"panic: runtime error at ", align 1, !dbg !109
@"runtime$string.14" = internal unnamed_addr constant [2 x i8] c": ", align 1, !dbg !114
@"runtime$string.17" = internal unnamed_addr constant [23 x i8] c"nil pointer dereference", align 1, !dbg !119
@"runtime$string.19" = internal unnamed_addr constant [18 x i8] c"index out of range", align 1, !dbg !124
@runtime.stackTop = internal unnamed_addr global i64 0, align 8, !dbg !129
@runtime.main_argv = internal unnamed_addr global ptr null, align 8, !dbg !132
@"runtime$string.50" = internal unnamed_addr constant [24 x i8] c"panic: runtime error at ", align 1, !dbg !135
@"runtime$string.55" = internal unnamed_addr constant [20 x i8] c"panic: runtime error", align 1, !dbg !137
@runtime.signalFutex = internal global %"internal/futex.Futex" zeroinitializer, align 4, !dbg !139
@runtime.receivedSignals = internal global %"sync/atomic.Bool" zeroinitializer, align 4, !dbg !141
@runtime.printLock = internal global %"internal/task.Semaphore" zeroinitializer, align 4, !dbg !143
@.string = private unnamed_addr global [6 x i8] c"0.41.1", align 1
@runtime.buildVersion = local_unnamed_addr global %runtime._string { ptr @.string, i64 6 }, align 8

declare void @tinygo_futex_wait(ptr nocapture dereferenceable_or_null(4), i32) local_unnamed_addr #0

declare void @tinygo_futex_wake(ptr nocapture dereferenceable_or_null(4)) local_unnamed_addr #0

declare void @tinygo_futex_wake_all(ptr nocapture dereferenceable_or_null(4)) local_unnamed_addr #0

; Function Attrs: nounwind uwtable(sync)
define internal fastcc void @"(*internal/task.Mutex).Unlock"(ptr nocapture dereferenceable_or_null(4) %m) unnamed_addr #1 !dbg !1735 {
entry:
    #dbg_value(ptr %m, !1740, !DIExpression(), !1742)
    #dbg_value(ptr %m, !1740, !DIExpression(), !1743)
  %0 = icmp eq ptr %m, null, !dbg !1744
  br i1 %0, label %gep.throw, label %"(*sync/atomic.Uint32).Swap.exit", !dbg !1744

"(*sync/atomic.Uint32).Swap.exit":                ; preds = %entry
    #dbg_value(ptr %m, !1745, !DIExpression(), !1753)
    #dbg_value(i32 0, !1752, !DIExpression(), !1753)
    #dbg_value(ptr %m, !1745, !DIExpression(), !1755)
    #dbg_value(i32 0, !1752, !DIExpression(), !1756)
    #dbg_value(ptr %m, !1757, !DIExpression(), !1765)
    #dbg_value(i32 0, !1764, !DIExpression(), !1765)
  %1 = atomicrmw xchg ptr %m, i32 0 syncscope("singlethread") seq_cst, align 4, !dbg !1765
    #dbg_value(i32 %1, !1741, !DIExpression(), !1767)
    #dbg_value(i32 %1, !1741, !DIExpression(), !1768)
  switch i32 %1, label %if.done [
    i32 0, label %if.then
    i32 2, label %gep.next5
  ], !dbg !1769

if.then:                                          ; preds = %"(*sync/atomic.Uint32).Swap.exit"
  call fastcc void @runtime._panic(), !dbg !1770
  unreachable, !dbg !1770

gep.next5:                                        ; preds = %"(*sync/atomic.Uint32).Swap.exit"
    #dbg_value(ptr %m, !1740, !DIExpression(), !1771)
    #dbg_value(ptr %m, !1772, !DIExpression(), !1779)
    #dbg_value(ptr %m, !1772, !DIExpression(), !1781)
  call void @tinygo_futex_wake(ptr nonnull dereferenceable_or_null(4) %m) #14, !dbg !1782
  br label %if.done, !dbg !1769

if.done:                                          ; preds = %"(*sync/atomic.Uint32).Swap.exit", %gep.next5
  ret void, !dbg !1783

gep.throw:                                        ; preds = %entry
  call fastcc void @runtime.nilPanic(), !dbg !1744
  unreachable, !dbg !1744
}

declare void @tinygo_task_init(ptr dereferenceable_or_null(88), ptr dereferenceable_or_null(8), ptr dereferenceable_or_null(4), ptr) local_unnamed_addr #0

declare ptr @tinygo_task_current() local_unnamed_addr #0

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_task_exited(ptr nocapture readonly dereferenceable_or_null(88) %t) local_unnamed_addr #1 !dbg !1784 {
entry:
    #dbg_value(ptr %t, !1788, !DIExpression(), !1793)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1794, !DIExpression(), !1798)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1794, !DIExpression(), !1800)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1801, !DIExpression(), !1808)
    #dbg_value(i32 0, !1806, !DIExpression(), !1808)
    #dbg_value(i32 1, !1807, !DIExpression(), !1808)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1801, !DIExpression(), !1810)
    #dbg_value(i32 0, !1806, !DIExpression(), !1811)
    #dbg_value(i32 1, !1807, !DIExpression(), !1812)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1813, !DIExpression(), !1820)
    #dbg_value(i32 0, !1818, !DIExpression(), !1820)
    #dbg_value(i32 1, !1819, !DIExpression(), !1820)
  %0 = cmpxchg ptr @"internal/task.activeTaskLock", i32 0, i32 1 syncscope("singlethread") seq_cst seq_cst, align 4, !dbg !1820
  %1 = extractvalue { i32, i1 } %0, 1, !dbg !1820
  br i1 %1, label %"(*internal/task.Mutex).Lock.exit", label %for.loop.preheader.i, !dbg !1822

for.loop.preheader.i:                             ; preds = %entry
    #dbg_value(ptr @"internal/task.activeTaskLock", !1794, !DIExpression(), !1823)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1745, !DIExpression(), !1824)
    #dbg_value(i32 2, !1752, !DIExpression(), !1824)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1745, !DIExpression(), !1826)
    #dbg_value(i32 2, !1752, !DIExpression(), !1827)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1757, !DIExpression(), !1828)
    #dbg_value(i32 2, !1764, !DIExpression(), !1828)
  %2 = atomicrmw xchg ptr @"internal/task.activeTaskLock", i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !1828
  %.not4.i = icmp eq i32 %2, 0, !dbg !1830
  br i1 %.not4.i, label %"(*internal/task.Mutex).Lock.exit", label %"(*internal/futex.Futex).Wait.exit.i", !dbg !1822

"(*internal/futex.Futex).Wait.exit.i":            ; preds = %for.loop.preheader.i, %"(*internal/futex.Futex).Wait.exit.i"
    #dbg_value(ptr @"internal/task.activeTaskLock", !1794, !DIExpression(), !1831)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1832, !DIExpression(), !1838)
    #dbg_value(i32 2, !1837, !DIExpression(), !1840)
  call void @tinygo_futex_wait(ptr nonnull dereferenceable_or_null(4) @"internal/task.activeTaskLock", i32 2) #14, !dbg !1841
    #dbg_value(ptr @"internal/task.activeTaskLock", !1745, !DIExpression(), !1826)
    #dbg_value(i32 2, !1752, !DIExpression(), !1827)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1757, !DIExpression(), !1828)
    #dbg_value(i32 2, !1764, !DIExpression(), !1828)
  %3 = atomicrmw xchg ptr @"internal/task.activeTaskLock", i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !1828
  %.not.i = icmp eq i32 %3, 0, !dbg !1830
  br i1 %.not.i, label %"(*internal/task.Mutex).Lock.exit", label %"(*internal/futex.Futex).Wait.exit.i", !dbg !1822

"(*internal/task.Mutex).Lock.exit":               ; preds = %"(*internal/futex.Futex).Wait.exit.i", %entry, %for.loop.preheader.i
    #dbg_value(i1 false, !1789, !DIExpression(), !1842)
    #dbg_value(ptr @"internal/task.activeTasks", !1790, !DIExpression(), !1843)
  %4 = load ptr, ptr @"internal/task.activeTasks", align 8, !dbg !1844
  %.not.not6 = icmp eq ptr %4, null, !dbg !1845
  br i1 %.not.not6, label %if.then4.critedge, label %deref.next10, !dbg !1846

for.loop:                                         ; preds = %deref.next10
  %5 = getelementptr inbounds nuw i8, ptr %7, i64 56, !dbg !1847
    #dbg_value(ptr %5, !1790, !DIExpression(), !1848)
    #dbg_value(ptr %5, !1790, !DIExpression(), !1849)
  %6 = load ptr, ptr %5, align 8, !dbg !1844
  %.not.not = icmp eq ptr %6, null, !dbg !1845
  br i1 %.not.not, label %if.then4.critedge, label %deref.next10, !dbg !1846

deref.next10:                                     ; preds = %"(*internal/task.Mutex).Lock.exit", %for.loop
  %7 = phi ptr [ %6, %for.loop ], [ %4, %"(*internal/task.Mutex).Lock.exit" ]
  %8 = phi ptr [ %5, %for.loop ], [ @"internal/task.activeTasks", %"(*internal/task.Mutex).Lock.exit" ]
    #dbg_value(ptr %8, !1790, !DIExpression(), !1849)
    #dbg_value(ptr %8, !1790, !DIExpression(), !1850)
    #dbg_value(ptr %t, !1788, !DIExpression(), !1851)
  %9 = icmp eq ptr %7, %t, !dbg !1852
    #dbg_value(ptr %8, !1790, !DIExpression(), !1853)
    #dbg_value(ptr %7, !1790, !DIExpression(DW_OP_plus_uconst, 56, DW_OP_stack_value), !1848)
  br i1 %9, label %store.next, label %for.loop, !dbg !1846

store.next:                                       ; preds = %deref.next10
    #dbg_value(ptr %8, !1790, !DIExpression(), !1854)
    #dbg_value(ptr %t, !1788, !DIExpression(), !1855)
  %10 = getelementptr inbounds nuw i8, ptr %t, i64 56, !dbg !1856
  %11 = load ptr, ptr %10, align 8, !dbg !1856
  store ptr %11, ptr %8, align 8, !dbg !1857
    #dbg_value(i1 true, !1789, !DIExpression(), !1858)
  %12 = load i32, ptr @"internal/task.otherGoroutines", align 4, !dbg !1859
  %13 = add i32 %12, -1, !dbg !1859
  store i32 %13, ptr @"internal/task.otherGoroutines", align 4, !dbg !1859
    #dbg_value(i32 %13, !1792, !DIExpression(), !1859)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1740, !DIExpression(), !1860)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1740, !DIExpression(), !1862)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1745, !DIExpression(), !1863)
    #dbg_value(i32 0, !1752, !DIExpression(), !1863)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1745, !DIExpression(), !1865)
    #dbg_value(i32 0, !1752, !DIExpression(), !1866)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1757, !DIExpression(), !1867)
    #dbg_value(i32 0, !1764, !DIExpression(), !1867)
  %14 = atomicrmw xchg ptr @"internal/task.activeTaskLock", i32 0 syncscope("singlethread") seq_cst, align 4, !dbg !1867
    #dbg_value(i32 %14, !1741, !DIExpression(), !1869)
    #dbg_value(i32 %14, !1741, !DIExpression(), !1870)
  switch i32 %14, label %"(*internal/task.Mutex).Unlock.exit" [
    i32 0, label %if.then.i
    i32 2, label %gep.next5.i
  ], !dbg !1871

if.then.i:                                        ; preds = %store.next
  call fastcc void @runtime._panic(), !dbg !1872
  unreachable, !dbg !1872

gep.next5.i:                                      ; preds = %store.next
    #dbg_value(ptr @"internal/task.activeTaskLock", !1740, !DIExpression(), !1873)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1772, !DIExpression(), !1874)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1772, !DIExpression(), !1876)
  call void @tinygo_futex_wake(ptr nonnull dereferenceable_or_null(4) @"internal/task.activeTaskLock") #14, !dbg !1877
  br label %"(*internal/task.Mutex).Unlock.exit", !dbg !1871

"(*internal/task.Mutex).Unlock.exit":             ; preds = %store.next, %gep.next5.i
    #dbg_value(i1 poison, !1789, !DIExpression(), !1878)
  ret void, !dbg !1879

if.then4.critedge:                                ; preds = %for.loop, %"(*internal/task.Mutex).Lock.exit"
  %15 = load i32, ptr @"internal/task.otherGoroutines", align 4, !dbg !1859
  %16 = add i32 %15, -1, !dbg !1859
  store i32 %16, ptr @"internal/task.otherGoroutines", align 4, !dbg !1859
    #dbg_value(i32 %13, !1792, !DIExpression(), !1859)
  call fastcc void @"(*internal/task.Mutex).Unlock"(ptr nonnull @"internal/task.activeTaskLock"), !dbg !1880
    #dbg_value(i1 poison, !1789, !DIExpression(), !1878)
  call fastcc void @runtime.runtimePanic(ptr nonnull @"internal/task$string.13", i64 17), !dbg !1881
  unreachable, !dbg !1846
}

declare void @tinygo_task_send_gc_signal(ptr nocapture) local_unnamed_addr #0

declare void @tinygo_scanCurrentStack() local_unnamed_addr #0

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_task_gc_pause(i32 %sig) local_unnamed_addr #1 !dbg !1882 {
entry:
    #dbg_value(i32 %sig, !1886, !DIExpression(), !1888)
  %0 = call ptr @tinygo_task_current() #14, !dbg !1889
    #dbg_value(ptr %0, !1893, !DIExpression(), !1895)
    #dbg_value(ptr %0, !1893, !DIExpression(), !1896)
  %1 = icmp eq ptr %0, null, !dbg !1897
  br i1 %1, label %if.then.i, label %"internal/task.Current.exit", !dbg !1898

if.then.i:                                        ; preds = %entry
  call fastcc void @runtime.runtimePanic(ptr nonnull @"internal/task$string.7", i64 20), !dbg !1899
  unreachable, !dbg !1898

"internal/task.Current.exit":                     ; preds = %entry
    #dbg_value(ptr %0, !1893, !DIExpression(), !1900)
  %2 = call ptr @llvm.stacksave.p0(), !dbg !1901
  %3 = ptrtoint ptr %2 to i64, !dbg !1904
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !1905
  store i64 %3, ptr %4, align 8, !dbg !1905
    #dbg_value(i64 %3, !1887, !DIExpression(), !1905)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1906, !DIExpression(), !1912)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1906, !DIExpression(), !1914)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1915, !DIExpression(), !1919)
    #dbg_value(i32 -1, !1918, !DIExpression(), !1919)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1915, !DIExpression(), !1921)
    #dbg_value(i32 -1, !1918, !DIExpression(), !1922)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1923, !DIExpression(), !1927)
    #dbg_value(i32 -1, !1926, !DIExpression(), !1927)
  %5 = atomicrmw add ptr @"internal/task.scanWaitGroup", i32 -1 syncscope("singlethread") seq_cst, align 4, !dbg !1927
  %6 = icmp eq i32 %5, 1, !dbg !1929
  br i1 %6, label %gep.next4.i, label %"(*internal/task.waitGroup).done.exit", !dbg !1930

gep.next4.i:                                      ; preds = %"internal/task.Current.exit"
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1906, !DIExpression(), !1931)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1932, !DIExpression(), !1935)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1932, !DIExpression(), !1937)
  call void @tinygo_futex_wake_all(ptr nonnull @"internal/task.scanWaitGroup") #14, !dbg !1938
  br label %"(*internal/task.waitGroup).done.exit", !dbg !1930

"(*internal/task.waitGroup).done.exit":           ; preds = %"internal/task.Current.exit", %gep.next4.i
    #dbg_value(ptr @"internal/task.gcState", !1939, !DIExpression(), !1944)
    #dbg_value(ptr @"internal/task.gcState", !1939, !DIExpression(), !1946)
    #dbg_value(ptr @"internal/task.gcState", !1947, !DIExpression(), !1952)
  %7 = load atomic i32, ptr @"internal/task.gcState" seq_cst, align 4, !dbg !1952
  %8 = icmp eq i32 %7, 1, !dbg !1954
  br i1 %8, label %for.body, label %for.done, !dbg !1955

for.body:                                         ; preds = %"(*internal/task.waitGroup).done.exit", %for.body
    #dbg_value(ptr @"internal/task.gcState", !1832, !DIExpression(), !1956)
    #dbg_value(i32 1, !1837, !DIExpression(), !1958)
  call void @tinygo_futex_wait(ptr nonnull @"internal/task.gcState", i32 1) #14, !dbg !1959
    #dbg_value(ptr @"internal/task.gcState", !1939, !DIExpression(), !1946)
    #dbg_value(ptr @"internal/task.gcState", !1947, !DIExpression(), !1952)
  %9 = load atomic i32, ptr @"internal/task.gcState" seq_cst, align 4, !dbg !1952
  %10 = icmp eq i32 %9, 1, !dbg !1954
  br i1 %10, label %for.body, label %for.done, !dbg !1955

for.done:                                         ; preds = %for.body, %"(*internal/task.waitGroup).done.exit"
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1906, !DIExpression(), !1960)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1906, !DIExpression(), !1962)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1915, !DIExpression(), !1963)
    #dbg_value(i32 -1, !1918, !DIExpression(), !1963)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1915, !DIExpression(), !1965)
    #dbg_value(i32 -1, !1918, !DIExpression(), !1966)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1923, !DIExpression(), !1967)
    #dbg_value(i32 -1, !1926, !DIExpression(), !1967)
  %11 = atomicrmw add ptr @"internal/task.scanWaitGroup", i32 -1 syncscope("singlethread") seq_cst, align 4, !dbg !1967
  %12 = icmp eq i32 %11, 1, !dbg !1969
  br i1 %12, label %gep.next4.i3, label %"(*internal/task.waitGroup).done.exit4", !dbg !1970

gep.next4.i3:                                     ; preds = %for.done
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1906, !DIExpression(), !1971)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1932, !DIExpression(), !1972)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1932, !DIExpression(), !1974)
  call void @tinygo_futex_wake_all(ptr nonnull @"internal/task.scanWaitGroup") #14, !dbg !1975
  br label %"(*internal/task.waitGroup).done.exit4", !dbg !1970

"(*internal/task.waitGroup).done.exit4":          ; preds = %for.done, %gep.next4.i3
  ret void, !dbg !1976
}

; Function Attrs: noinline nounwind allockind("alloc,zeroed") uwtable(sync)
define internal fastcc noalias nonnull ptr @runtime.alloc() unnamed_addr #2 !dbg !1977 {
entry:
    #dbg_value(i64 8, !1981, !DIExpression(), !1984)
    #dbg_value(ptr inttoptr (i64 3 to ptr), !1982, !DIExpression(), !1984)
    #dbg_value(i64 8, !1981, !DIExpression(), !1985)
    #dbg_value(ptr @runtime.gcLock, !1794, !DIExpression(), !1986)
    #dbg_value(ptr @runtime.gcLock, !1794, !DIExpression(), !1988)
    #dbg_value(ptr @runtime.gcLock, !1801, !DIExpression(), !1989)
    #dbg_value(i32 0, !1806, !DIExpression(), !1989)
    #dbg_value(i32 1, !1807, !DIExpression(), !1989)
    #dbg_value(ptr @runtime.gcLock, !1801, !DIExpression(), !1991)
    #dbg_value(i32 0, !1806, !DIExpression(), !1992)
    #dbg_value(i32 1, !1807, !DIExpression(), !1993)
    #dbg_value(ptr @runtime.gcLock, !1813, !DIExpression(), !1994)
    #dbg_value(i32 0, !1818, !DIExpression(), !1994)
    #dbg_value(i32 1, !1819, !DIExpression(), !1994)
  %0 = cmpxchg ptr @runtime.gcLock, i32 0, i32 1 syncscope("singlethread") seq_cst seq_cst, align 4, !dbg !1994
  %1 = extractvalue { i32, i1 } %0, 1, !dbg !1994
  br i1 %1, label %"(*internal/task.Mutex).Lock.exit", label %for.loop.preheader.i, !dbg !1996

for.loop.preheader.i:                             ; preds = %entry
    #dbg_value(ptr @runtime.gcLock, !1794, !DIExpression(), !1997)
    #dbg_value(ptr @runtime.gcLock, !1745, !DIExpression(), !1998)
    #dbg_value(i32 2, !1752, !DIExpression(), !1998)
    #dbg_value(ptr @runtime.gcLock, !1745, !DIExpression(), !2000)
    #dbg_value(i32 2, !1752, !DIExpression(), !2001)
    #dbg_value(ptr @runtime.gcLock, !1757, !DIExpression(), !2002)
    #dbg_value(i32 2, !1764, !DIExpression(), !2002)
  %2 = atomicrmw xchg ptr @runtime.gcLock, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !2002
  %.not4.i = icmp eq i32 %2, 0, !dbg !2004
  br i1 %.not4.i, label %"(*internal/task.Mutex).Lock.exit", label %"(*internal/futex.Futex).Wait.exit.i", !dbg !1996

"(*internal/futex.Futex).Wait.exit.i":            ; preds = %for.loop.preheader.i, %"(*internal/futex.Futex).Wait.exit.i"
    #dbg_value(ptr @runtime.gcLock, !1794, !DIExpression(), !2005)
    #dbg_value(ptr @runtime.gcLock, !1832, !DIExpression(), !2006)
    #dbg_value(i32 2, !1837, !DIExpression(), !2008)
  call void @tinygo_futex_wait(ptr nonnull dereferenceable_or_null(4) @runtime.gcLock, i32 2) #14, !dbg !2009
    #dbg_value(ptr @runtime.gcLock, !1745, !DIExpression(), !2000)
    #dbg_value(i32 2, !1752, !DIExpression(), !2001)
    #dbg_value(ptr @runtime.gcLock, !1757, !DIExpression(), !2002)
    #dbg_value(i32 2, !1764, !DIExpression(), !2002)
  %3 = atomicrmw xchg ptr @runtime.gcLock, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !2002
  %.not.i = icmp eq i32 %3, 0, !dbg !2004
  br i1 %.not.i, label %"(*internal/task.Mutex).Lock.exit", label %"(*internal/futex.Futex).Wait.exit.i", !dbg !1996

"(*internal/task.Mutex).Lock.exit":               ; preds = %"(*internal/futex.Futex).Wait.exit.i", %entry, %for.loop.preheader.i
    #dbg_value(ptr null, !1983, !DIExpression(), !2010)
    #dbg_value(ptr inttoptr (i64 3 to ptr), !1982, !DIExpression(), !2011)
    #dbg_value(i64 8, !1981, !DIExpression(), !2012)
  %4 = call ptr @GC_malloc_atomic(i64 8) #14, !dbg !2013
    #dbg_value(ptr %4, !1983, !DIExpression(), !2014)
    #dbg_value(ptr %4, !1983, !DIExpression(), !2015)
    #dbg_value(i64 8, !1981, !DIExpression(), !2016)
    #dbg_value(ptr %4, !2017, !DIExpression(), !2023)
    #dbg_value(i64 8, !2022, !DIExpression(), !2023)
  store i64 0, ptr %4, align 1, !dbg !2023
    #dbg_value(ptr @"internal/task.gcState", !1939, !DIExpression(), !2025)
    #dbg_value(ptr @"internal/task.gcState", !1939, !DIExpression(), !2035)
    #dbg_value(ptr @"internal/task.gcState", !1947, !DIExpression(), !2036)
  %5 = load atomic i32, ptr @"internal/task.gcState" seq_cst, align 4, !dbg !2036
  %6 = icmp eq i32 %5, 0, !dbg !2038
  br i1 %6, label %runtime.gcResumeWorld.exit, label %if.done.i.i, !dbg !2039

if.done.i.i:                                      ; preds = %"(*internal/task.Mutex).Lock.exit"
  %7 = load i32, ptr @"internal/task.otherGoroutines", align 4, !dbg !2040
    #dbg_value(i32 %7, !2029, !DIExpression(), !2040)
  store i32 %7, ptr @"internal/task.scanWaitGroup", align 4, !dbg !2041
    #dbg_value(%"internal/task.Semaphore" poison, !2030, !DIExpression(), !2041)
    #dbg_value(ptr @"internal/task.gcState", !2042, !DIExpression(), !2046)
    #dbg_value(i32 0, !2045, !DIExpression(), !2046)
    #dbg_value(ptr @"internal/task.gcState", !2042, !DIExpression(), !2048)
    #dbg_value(i32 0, !2045, !DIExpression(), !2049)
    #dbg_value(ptr @"internal/task.gcState", !2050, !DIExpression(), !2054)
    #dbg_value(i32 0, !2053, !DIExpression(), !2054)
  store atomic i32 0, ptr @"internal/task.gcState" seq_cst, align 4, !dbg !2054
    #dbg_value(ptr @"internal/task.gcState", !1932, !DIExpression(), !2056)
    #dbg_value(ptr @"internal/task.gcState", !1932, !DIExpression(), !2058)
  call void @tinygo_futex_wake_all(ptr nonnull @"internal/task.gcState") #14, !dbg !2059
    #dbg_value(ptr @"internal/task.activeTaskLock", !1740, !DIExpression(), !2060)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1740, !DIExpression(), !2062)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1745, !DIExpression(), !2063)
    #dbg_value(i32 0, !1752, !DIExpression(), !2063)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1745, !DIExpression(), !2065)
    #dbg_value(i32 0, !1752, !DIExpression(), !2066)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1757, !DIExpression(), !2067)
    #dbg_value(i32 0, !1764, !DIExpression(), !2067)
  %8 = atomicrmw xchg ptr @"internal/task.activeTaskLock", i32 0 syncscope("singlethread") seq_cst, align 4, !dbg !2067
    #dbg_value(i32 %8, !1741, !DIExpression(), !2069)
    #dbg_value(i32 %8, !1741, !DIExpression(), !2070)
  switch i32 %8, label %runtime.gcResumeWorld.exit [
    i32 0, label %if.then.i.i.i
    i32 2, label %gep.next5.i.i.i
  ], !dbg !2071

if.then.i.i.i:                                    ; preds = %if.done.i.i
  call fastcc void @runtime._panic(), !dbg !2072
  unreachable, !dbg !2072

gep.next5.i.i.i:                                  ; preds = %if.done.i.i
    #dbg_value(ptr @"internal/task.activeTaskLock", !1740, !DIExpression(), !2073)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1772, !DIExpression(), !2074)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1772, !DIExpression(), !2076)
  call void @tinygo_futex_wake(ptr nonnull dereferenceable_or_null(4) @"internal/task.activeTaskLock") #14, !dbg !2077
  br label %runtime.gcResumeWorld.exit, !dbg !2071

runtime.gcResumeWorld.exit:                       ; preds = %"(*internal/task.Mutex).Lock.exit", %if.done.i.i, %gep.next5.i.i.i
    #dbg_value(ptr @runtime.gcLock, !1740, !DIExpression(), !2078)
    #dbg_value(ptr @runtime.gcLock, !1740, !DIExpression(), !2080)
    #dbg_value(ptr @runtime.gcLock, !1745, !DIExpression(), !2081)
    #dbg_value(i32 0, !1752, !DIExpression(), !2081)
    #dbg_value(ptr @runtime.gcLock, !1745, !DIExpression(), !2083)
    #dbg_value(i32 0, !1752, !DIExpression(), !2084)
    #dbg_value(ptr @runtime.gcLock, !1757, !DIExpression(), !2085)
    #dbg_value(i32 0, !1764, !DIExpression(), !2085)
  %9 = atomicrmw xchg ptr @runtime.gcLock, i32 0 syncscope("singlethread") seq_cst, align 4, !dbg !2085
    #dbg_value(i32 %9, !1741, !DIExpression(), !2087)
    #dbg_value(i32 %9, !1741, !DIExpression(), !2088)
  switch i32 %9, label %common.ret [
    i32 0, label %if.then.i
    i32 2, label %gep.next5.i
  ], !dbg !2089

if.then.i:                                        ; preds = %runtime.gcResumeWorld.exit
  call fastcc void @runtime._panic(), !dbg !2090
  unreachable, !dbg !2090

gep.next5.i:                                      ; preds = %runtime.gcResumeWorld.exit
    #dbg_value(ptr @runtime.gcLock, !1740, !DIExpression(), !2091)
    #dbg_value(ptr @runtime.gcLock, !1772, !DIExpression(), !2092)
    #dbg_value(ptr @runtime.gcLock, !1772, !DIExpression(), !2094)
  call void @tinygo_futex_wake(ptr nonnull dereferenceable_or_null(4) @runtime.gcLock) #14, !dbg !2095
  br label %common.ret, !dbg !2089

common.ret:                                       ; preds = %gep.next5.i, %runtime.gcResumeWorld.exit
    #dbg_value(ptr %4, !1983, !DIExpression(), !2096)
  ret ptr %4, !dbg !2097
}

declare ptr @GC_malloc_atomic(i64) local_unnamed_addr #0

; Function Attrs: cold nofree noreturn nounwind uwtable(sync)
define internal fastcc void @runtime.runtimePanic(ptr nocapture readonly %msg.data, i64 range(i64 17, 21) %msg.len) unnamed_addr #3 !dbg !2098 {
entry:
    #dbg_value(ptr %msg.data, !2102, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2103)
    #dbg_value(i64 %msg.len, !2102, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2103)
  %0 = call ptr @llvm.returnaddress(i32 0), !dbg !2104
    #dbg_value(%runtime._string poison, !2102, !DIExpression(), !2105)
  call fastcc void @runtime.runtimePanicAt(ptr %0, ptr %msg.data, i64 %msg.len), !dbg !2106
  unreachable, !dbg !2107
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #4

; Function Attrs: cold nofree noreturn nounwind uwtable(sync)
define internal fastcc void @runtime.runtimePanicAt(ptr %addr, ptr nocapture readonly %msg.data, i64 range(i64 17, 24) %msg.len) unnamed_addr #3 !dbg !2108 {
entry:
    #dbg_value(ptr %addr, !2112, !DIExpression(), !2114)
    #dbg_value(ptr %msg.data, !2113, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2114)
    #dbg_value(i64 %msg.len, !2113, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2114)
  call fastcc void @runtime.printstring(ptr nonnull @"runtime$string.13", i64 24), !dbg !2115
    #dbg_value(ptr %addr, !2112, !DIExpression(), !2116)
  %0 = ptrtoint ptr %addr to i64, !dbg !2117
  %1 = add i64 %0, -5, !dbg !2118
  call fastcc void @runtime.printptr(i64 %1), !dbg !2119
  call fastcc void @runtime.printstring(ptr nonnull @"runtime$string.14", i64 2), !dbg !2120
    #dbg_value(%runtime._string poison, !2113, !DIExpression(), !2121)
  call fastcc void @runtime.printstring(ptr %msg.data, i64 %msg.len), !dbg !2122
  call fastcc void @runtime.printnl(), !dbg !2123
  call void @abort() #14, !dbg !2124
  unreachable, !dbg !2125
}

; Function Attrs: nofree nounwind uwtable(sync)
define internal fastcc void @runtime.printstring(ptr nocapture readonly %s.data, i64 range(i64 2, 31) %s.len) unnamed_addr #5 !dbg !2126 {
entry:
  %stackalloc.i = alloca [1 x i8], align 1, !dbg !2131
    #dbg_value(ptr %s.data, !2128, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2138)
    #dbg_value(i64 %s.len, !2128, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2138)
    #dbg_value(i64 0, !2129, !DIExpression(), !2139)
    #dbg_value(%runtime._string poison, !2128, !DIExpression(), !2140)
  br label %for.body, !dbg !2141

for.body:                                         ; preds = %entry, %for.body
  %0 = phi i64 [ 0, %entry ], [ %4, %for.body ]
    #dbg_value(i64 %0, !2129, !DIExpression(), !2142)
    #dbg_value(%runtime._string poison, !2128, !DIExpression(), !2143)
  %1 = getelementptr inbounds nuw i8, ptr %s.data, i64 %0, !dbg !2144
  %2 = load i8, ptr %1, align 1, !dbg !2144
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i), !dbg !2145
    #dbg_value(i8 %2, !2136, !DIExpression(), !2145)
  store i8 %2, ptr %stackalloc.i, align 1, !dbg !2145
  %3 = call i64 @write(i32 1, ptr nonnull %stackalloc.i, i64 1) #14, !dbg !2146
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i), !dbg !2147
  %4 = add nuw nsw i64 %0, 1, !dbg !2148
    #dbg_value(i64 %4, !2129, !DIExpression(), !2149)
  %exitcond.not = icmp eq i64 %4, %s.len, !dbg !2150
  br i1 %exitcond.not, label %for.done, label %for.body, !dbg !2141

for.done:                                         ; preds = %for.body
  ret void, !dbg !2151
}

; Function Attrs: nofree nounwind uwtable(sync)
define internal fastcc void @runtime.printptr(i64 %ptr) unnamed_addr #5 !dbg !2152 {
entry:
  %stackalloc.i4 = alloca [1 x i8], align 1, !dbg !2159
  %stackalloc.i3 = alloca [1 x i8], align 1, !dbg !2161
  %stackalloc.i2 = alloca [1 x i8], align 1, !dbg !2163
  %stackalloc.i = alloca [1 x i8], align 1, !dbg !2165
  %stackalloc.i.i = alloca [1 x i8], align 1, !dbg !2167
    #dbg_value(i64 %ptr, !2156, !DIExpression(), !2170)
    #dbg_value(i64 %ptr, !2156, !DIExpression(), !2171)
  %0 = icmp eq i64 %ptr, 0, !dbg !2172
  br i1 %0, label %for.body.i, label %if.done, !dbg !2173

common.ret:                                       ; preds = %if.done2, %for.body.i
  ret void, !dbg !2173

for.body.i:                                       ; preds = %entry
    #dbg_value(i64 0, !2129, !DIExpression(), !2174)
    #dbg_value(%runtime._string poison, !2128, !DIExpression(), !2175)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !2176
    #dbg_value(i8 110, !2136, !DIExpression(), !2176)
  store i8 110, ptr %stackalloc.i.i, align 1, !dbg !2176
  %1 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i, i64 1) #14, !dbg !2177
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !2178
    #dbg_value(i64 1, !2129, !DIExpression(), !2179)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !2176
    #dbg_value(i8 105, !2136, !DIExpression(), !2176)
  store i8 105, ptr %stackalloc.i.i, align 1, !dbg !2176
  %2 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i, i64 1) #14, !dbg !2177
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !2178
    #dbg_value(i64 2, !2129, !DIExpression(), !2179)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !2176
    #dbg_value(i8 108, !2136, !DIExpression(), !2176)
  store i8 108, ptr %stackalloc.i.i, align 1, !dbg !2176
  %3 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i, i64 1) #14, !dbg !2177
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !2178
    #dbg_value(i64 3, !2129, !DIExpression(), !2179)
  br label %common.ret, !dbg !2173

if.done:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i), !dbg !2180
    #dbg_value(i8 48, !2136, !DIExpression(), !2181)
    #dbg_value(i8 48, !2136, !DIExpression(), !2180)
  store i8 48, ptr %stackalloc.i, align 1, !dbg !2180
    #dbg_value(i8 48, !2136, !DIExpression(), !2180)
  %4 = call i64 @write(i32 1, ptr nonnull %stackalloc.i, i64 1) #14, !dbg !2182
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i), !dbg !2183
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i2), !dbg !2184
    #dbg_value(i8 120, !2136, !DIExpression(), !2185)
    #dbg_value(i8 120, !2136, !DIExpression(), !2184)
  store i8 120, ptr %stackalloc.i2, align 1, !dbg !2184
    #dbg_value(i8 120, !2136, !DIExpression(), !2184)
  %5 = call i64 @write(i32 1, ptr nonnull %stackalloc.i2, i64 1) #14, !dbg !2186
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i2), !dbg !2187
    #dbg_value(i64 0, !2157, !DIExpression(), !2188)
  br label %for.body, !dbg !2173

for.body:                                         ; preds = %if.done, %if.done2
  %6 = phi i64 [ 0, %if.done ], [ %14, %if.done2 ]
  %7 = phi i64 [ %ptr, %if.done ], [ %13, %if.done2 ]
    #dbg_value(i64 %6, !2157, !DIExpression(), !2189)
    #dbg_value(i64 %7, !2156, !DIExpression(), !2190)
  %8 = lshr i64 %7, 60, !dbg !2191
  %9 = trunc nuw nsw i64 %8 to i8, !dbg !2192
    #dbg_value(i8 %9, !2158, !DIExpression(), !2193)
    #dbg_value(i8 %9, !2158, !DIExpression(), !2194)
  %10 = icmp ult i64 %7, -6917529027641081856, !dbg !2195
  br i1 %10, label %if.then1, label %if.else, !dbg !2173

if.then1:                                         ; preds = %for.body
    #dbg_value(i8 %9, !2158, !DIExpression(), !2196)
  %11 = or disjoint i8 %9, 48, !dbg !2197
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i3), !dbg !2198
    #dbg_value(i8 %11, !2136, !DIExpression(), !2199)
    #dbg_value(i8 %11, !2136, !DIExpression(), !2198)
  store i8 %11, ptr %stackalloc.i3, align 1, !dbg !2198
    #dbg_value(i8 %11, !2136, !DIExpression(), !2198)
  %12 = call i64 @write(i32 1, ptr nonnull %stackalloc.i3, i64 1) #14, !dbg !2200
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i3), !dbg !2201
  br label %if.done2, !dbg !2173

if.done2:                                         ; preds = %if.else, %if.then1
  %13 = shl i64 %7, 4, !dbg !2202
    #dbg_value(i64 %13, !2156, !DIExpression(), !2202)
  %14 = add nuw nsw i64 %6, 1, !dbg !2203
    #dbg_value(i64 %14, !2157, !DIExpression(), !2189)
  %exitcond.not = icmp eq i64 %14, 16, !dbg !2204
  br i1 %exitcond.not, label %common.ret, label %for.body, !dbg !2173

if.else:                                          ; preds = %for.body
    #dbg_value(i8 %9, !2158, !DIExpression(), !2205)
  %15 = add nuw nsw i8 %9, 87, !dbg !2206
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i4), !dbg !2207
    #dbg_value(i8 %15, !2136, !DIExpression(), !2208)
    #dbg_value(i8 %15, !2136, !DIExpression(), !2207)
  store i8 %15, ptr %stackalloc.i4, align 1, !dbg !2207
    #dbg_value(i8 %15, !2136, !DIExpression(), !2207)
  %16 = call i64 @write(i32 1, ptr nonnull %stackalloc.i4, i64 1) #14, !dbg !2209
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i4), !dbg !2210
  br label %if.done2, !dbg !2173
}

; Function Attrs: nofree nounwind uwtable(sync)
define internal fastcc void @runtime.printnl() unnamed_addr #5 !dbg !2211 {
entry:
  %stackalloc.i = alloca [1 x i8], align 1, !dbg !2213
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i), !dbg !2215
    #dbg_value(i8 10, !2136, !DIExpression(), !2216)
    #dbg_value(i8 10, !2136, !DIExpression(), !2215)
  store i8 10, ptr %stackalloc.i, align 1, !dbg !2215
    #dbg_value(i8 10, !2136, !DIExpression(), !2215)
  %0 = call i64 @write(i32 1, ptr nonnull %stackalloc.i, i64 1) #14, !dbg !2217
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i), !dbg !2218
  ret void, !dbg !2219
}

; Function Attrs: cold nofree noreturn
declare void @abort() local_unnamed_addr #6

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr nocapture noundef readonly, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

declare i32 @getrandom(ptr nocapture, i64, i32) local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #9

; Function Attrs: cold nofree noreturn nounwind uwtable(sync)
define internal fastcc void @runtime.nilPanic() unnamed_addr #3 !dbg !2220 {
entry:
  %0 = call ptr @llvm.returnaddress(i32 0), !dbg !2221
  call fastcc void @runtime.runtimePanicAt(ptr %0, ptr nonnull @"runtime$string.17", i64 23), !dbg !2222
  unreachable, !dbg !2223
}

; Function Attrs: cold nofree noreturn nounwind uwtable(sync)
define internal fastcc void @runtime.lookupPanic() unnamed_addr #3 !dbg !2224 {
entry:
  %0 = call ptr @llvm.returnaddress(i32 0), !dbg !2225
  call fastcc void @runtime.runtimePanicAt(ptr %0, ptr nonnull @"runtime$string.19", i64 18), !dbg !2226
  unreachable, !dbg !2227
}

; Function Attrs: noreturn nounwind uwtable(sync)
define internal fastcc void @runtime.panicOrGoexit() unnamed_addr #10 !dbg !2228 {
entry:
    #dbg_value(ptr @"reflect/types.type:basic:string", !2233, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2249)
    #dbg_value(ptr @"internal/task$pack", !2233, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2249)
    #dbg_value(i8 1, !2234, !DIExpression(), !2249)
  %0 = call ptr @tinygo_task_current() #14, !dbg !2250
    #dbg_value(ptr %0, !1893, !DIExpression(), !2252)
    #dbg_value(ptr %0, !1893, !DIExpression(), !2253)
  %1 = icmp eq ptr %0, null, !dbg !2254
  br i1 %1, label %if.then.i, label %"internal/task.Current.exit", !dbg !2255

if.then.i:                                        ; preds = %entry
  call fastcc void @runtime.runtimePanic(ptr nonnull @"internal/task$string.7", i64 20), !dbg !2256
  unreachable, !dbg !2255

"internal/task.Current.exit":                     ; preds = %entry
    #dbg_value(ptr %0, !1893, !DIExpression(), !2257)
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !2258
  %3 = load ptr, ptr %2, align 8, !dbg !2258
    #dbg_value(ptr %3, !2235, !DIExpression(), !2259)
    #dbg_value(ptr %3, !2235, !DIExpression(), !2260)
  %.not = icmp eq ptr %3, null, !dbg !2261
  br i1 %.not, label %if.done5, label %store.next, !dbg !2262

store.next:                                       ; preds = %"internal/task.Current.exit"
    #dbg_value(ptr %3, !2235, !DIExpression(), !2263)
    #dbg_value({ ptr, ptr } poison, !2233, !DIExpression(), !2264)
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !2265
  store ptr @"reflect/types.type:basic:string", ptr %4, align 8, !dbg !2265
  %.repack5 = getelementptr inbounds nuw i8, ptr %3, i64 40, !dbg !2265
  store ptr @"internal/task$pack", ptr %.repack5, align 8, !dbg !2265
    #dbg_value({ ptr, ptr } poison, !2247, !DIExpression(), !2265)
    #dbg_value(ptr %3, !2235, !DIExpression(), !2266)
    #dbg_value(i8 1, !2234, !DIExpression(), !2267)
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !2268
  store i8 1, ptr %5, align 1, !dbg !2268
    #dbg_value(i8 1, !2248, !DIExpression(), !2268)
    #dbg_value(ptr %3, !2235, !DIExpression(), !2269)
  call void @tinygo_longjmp(ptr nonnull %3) #14, !dbg !2270
  br label %if.done5, !dbg !2262

if.done5:                                         ; preds = %"internal/task.Current.exit", %store.next
    #dbg_value(i8 1, !2234, !DIExpression(), !2271)
  call fastcc void @runtime.printstring(ptr nonnull @"runtime$string.12", i64 7), !dbg !2272
    #dbg_value({ ptr, ptr } poison, !2233, !DIExpression(), !2273)
  call fastcc void @runtime.printitf(), !dbg !2274
  call fastcc void @runtime.printnl(), !dbg !2275
  call void @abort() #14, !dbg !2276
  unreachable, !dbg !2277
}

declare void @tinygo_longjmp(ptr nocapture dereferenceable_or_null(48)) local_unnamed_addr #0

; Function Attrs: nofree nounwind uwtable(sync)
define internal fastcc void @runtime.printitf() unnamed_addr #5 !dbg !2278 {
entry:
  %stackalloc.i.i = alloca [1 x i8], align 1, !dbg !2309
    #dbg_value(ptr @"reflect/types.type:basic:string", !2282, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2312)
    #dbg_value(ptr @"internal/task$pack", !2282, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2312)
    #dbg_value({ ptr, ptr } poison, !2282, !DIExpression(), !2313)
    #dbg_value(%runtime._string { ptr @"internal/task$string", i64 30 }, !2304, !DIExpression(), !2314)
    #dbg_value(ptr @"internal/task$string", !2128, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2315)
    #dbg_value(i64 30, !2128, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2315)
    #dbg_value(i64 0, !2129, !DIExpression(), !2316)
    #dbg_value(%runtime._string poison, !2128, !DIExpression(), !2317)
  br label %for.body.i, !dbg !2318

for.body.i:                                       ; preds = %for.body.i, %entry
  %0 = phi i64 [ 0, %entry ], [ %4, %for.body.i ]
    #dbg_value(i64 %0, !2129, !DIExpression(), !2319)
    #dbg_value(%runtime._string poison, !2128, !DIExpression(), !2320)
  %1 = getelementptr inbounds nuw i8, ptr @"internal/task$string", i64 %0, !dbg !2321
  %2 = load i8, ptr %1, align 1, !dbg !2321
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !2322
    #dbg_value(i8 %2, !2136, !DIExpression(), !2322)
  store i8 %2, ptr %stackalloc.i.i, align 1, !dbg !2322
  %3 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i, i64 1) #14, !dbg !2323
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !2324
  %4 = add nuw nsw i64 %0, 1, !dbg !2325
    #dbg_value(i64 %4, !2129, !DIExpression(), !2326)
  %exitcond.not.i = icmp eq i64 %4, 30, !dbg !2327
  br i1 %exitcond.not.i, label %runtime.printstring.exit, label %for.body.i, !dbg !2318

runtime.printstring.exit:                         ; preds = %for.body.i
  ret void, !dbg !2328
}

; Function Attrs: noreturn nounwind uwtable(sync)
define internal fastcc void @runtime._panic() unnamed_addr #10 !dbg !2329 {
entry:
    #dbg_value(ptr @"reflect/types.type:basic:string", !2331, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2332)
    #dbg_value(ptr @"internal/task$pack", !2331, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2332)
    #dbg_value({ ptr, ptr } poison, !2331, !DIExpression(), !2333)
  call fastcc void @runtime.panicOrGoexit(), !dbg !2334
  unreachable, !dbg !2335
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable(sync)
define double @fminimum(double %x, double %y) local_unnamed_addr #11 !dbg !2336 {
entry:
    #dbg_value(double %x, !2340, !DIExpression(), !2342)
    #dbg_value(double %y, !2341, !DIExpression(), !2342)
    #dbg_value(double %x, !2340, !DIExpression(), !2343)
    #dbg_value(double %y, !2341, !DIExpression(), !2344)
    #dbg_value(double %x, !2345, !DIExpression(), !2349)
    #dbg_value(double %y, !2348, !DIExpression(), !2349)
    #dbg_value(double %x, !2345, !DIExpression(), !2351)
    #dbg_value(double %y, !2348, !DIExpression(), !2352)
    #dbg_value(double %x, !2353, !DIExpression(), !2363)
    #dbg_value(double %y, !2358, !DIExpression(), !2363)
    #dbg_value(i64 9218868437227405313, !2359, !DIExpression(), !2363)
    #dbg_value(i64 9223372036854775807, !2360, !DIExpression(), !2363)
  %.cast.i.i = bitcast double %x to i64, !dbg !2365
    #dbg_value(i64 %.cast.i.i, !2361, !DIExpression(), !2366)
  %.cast2.i.i = bitcast double %y to i64, !dbg !2367
    #dbg_value(i64 %.cast2.i.i, !2362, !DIExpression(), !2368)
    #dbg_value(i64 %.cast.i.i, !2361, !DIExpression(), !2369)
    #dbg_value(i64 9218868437227405313, !2359, !DIExpression(), !2370)
  %0 = icmp sgt i64 %.cast.i.i, 9218868437227405312, !dbg !2371
  br i1 %0, label %runtime.minimumFloat64.exit, label %switch.next.i.i, !dbg !2372

switch.next.i.i:                                  ; preds = %entry
    #dbg_value(i64 %.cast2.i.i, !2362, !DIExpression(), !2373)
    #dbg_value(i64 9218868437227405313, !2359, !DIExpression(), !2374)
  %1 = icmp sgt i64 %.cast2.i.i, 9218868437227405312, !dbg !2375
  br i1 %1, label %runtime.minimumFloat64.exit, label %switch.next2.i.i, !dbg !2372

switch.next2.i.i:                                 ; preds = %switch.next.i.i
    #dbg_value(i64 %.cast.i.i, !2361, !DIExpression(), !2376)
  %2 = icmp slt i64 %.cast.i.i, 0, !dbg !2377
  %3 = xor i64 %.cast.i.i, 9223372036854775807
  %spec.select.i.i = select i1 %2, i64 %3, i64 %.cast.i.i, !dbg !2372
    #dbg_value(i64 %.cast2.i.i, !2362, !DIExpression(), !2378)
  %4 = icmp slt i64 %.cast2.i.i, 0, !dbg !2379
  %5 = xor i64 %.cast2.i.i, 9223372036854775807, !dbg !2372
  %6 = select i1 %4, i64 %5, i64 %.cast2.i.i, !dbg !2372
    #dbg_value(i64 %spec.select.i.i, !2361, !DIExpression(), !2380)
    #dbg_value(i64 %6, !2362, !DIExpression(), !2381)
  %.not.i.i = icmp sgt i64 %spec.select.i.i, %6, !dbg !2382
  %y.x.i.i = select i1 %.not.i.i, double %y, double %x, !dbg !2372
  br label %runtime.minimumFloat64.exit, !dbg !2372

runtime.minimumFloat64.exit:                      ; preds = %entry, %switch.next.i.i, %switch.next2.i.i
  %common.ret.op.i.i = phi double [ %x, %entry ], [ %y, %switch.next.i.i ], [ %y.x.i.i, %switch.next2.i.i ]
  ret double %common.ret.op.i.i, !dbg !2383
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable(sync)
define float @fminimumf(float %x, float %y) local_unnamed_addr #11 !dbg !2384 {
entry:
    #dbg_value(float %x, !2388, !DIExpression(), !2390)
    #dbg_value(float %y, !2389, !DIExpression(), !2390)
    #dbg_value(float %x, !2388, !DIExpression(), !2391)
    #dbg_value(float %y, !2389, !DIExpression(), !2392)
    #dbg_value(float %x, !2393, !DIExpression(), !2397)
    #dbg_value(float %y, !2396, !DIExpression(), !2397)
    #dbg_value(float %x, !2393, !DIExpression(), !2399)
    #dbg_value(float %y, !2396, !DIExpression(), !2400)
    #dbg_value(float %x, !2401, !DIExpression(), !2411)
    #dbg_value(float %y, !2406, !DIExpression(), !2411)
    #dbg_value(i32 2139095041, !2407, !DIExpression(), !2411)
    #dbg_value(i32 2147483647, !2408, !DIExpression(), !2411)
  %.cast.i.i = bitcast float %x to i32, !dbg !2413
    #dbg_value(i32 %.cast.i.i, !2409, !DIExpression(), !2414)
  %.cast2.i.i = bitcast float %y to i32, !dbg !2415
    #dbg_value(i32 %.cast2.i.i, !2410, !DIExpression(), !2416)
    #dbg_value(i32 %.cast.i.i, !2409, !DIExpression(), !2417)
    #dbg_value(i32 2139095041, !2407, !DIExpression(), !2418)
  %0 = icmp sgt i32 %.cast.i.i, 2139095040, !dbg !2419
  br i1 %0, label %runtime.minimumFloat32.exit, label %switch.next.i.i, !dbg !2420

switch.next.i.i:                                  ; preds = %entry
    #dbg_value(i32 %.cast2.i.i, !2410, !DIExpression(), !2421)
    #dbg_value(i32 2139095041, !2407, !DIExpression(), !2422)
  %1 = icmp sgt i32 %.cast2.i.i, 2139095040, !dbg !2423
  br i1 %1, label %runtime.minimumFloat32.exit, label %switch.next2.i.i, !dbg !2420

switch.next2.i.i:                                 ; preds = %switch.next.i.i
    #dbg_value(i32 %.cast.i.i, !2409, !DIExpression(), !2424)
  %2 = icmp slt i32 %.cast.i.i, 0, !dbg !2425
  %3 = xor i32 %.cast.i.i, 2147483647
  %spec.select.i.i = select i1 %2, i32 %3, i32 %.cast.i.i, !dbg !2420
    #dbg_value(i32 %.cast2.i.i, !2410, !DIExpression(), !2426)
  %4 = icmp slt i32 %.cast2.i.i, 0, !dbg !2427
  %5 = xor i32 %.cast2.i.i, 2147483647, !dbg !2420
  %6 = select i1 %4, i32 %5, i32 %.cast2.i.i, !dbg !2420
    #dbg_value(i32 %spec.select.i.i, !2409, !DIExpression(), !2428)
    #dbg_value(i32 %6, !2410, !DIExpression(), !2429)
  %.not.i.i = icmp sgt i32 %spec.select.i.i, %6, !dbg !2430
  %y.x.i.i = select i1 %.not.i.i, float %y, float %x, !dbg !2420
  br label %runtime.minimumFloat32.exit, !dbg !2420

runtime.minimumFloat32.exit:                      ; preds = %entry, %switch.next.i.i, %switch.next2.i.i
  %common.ret.op.i.i = phi float [ %x, %entry ], [ %y, %switch.next.i.i ], [ %y.x.i.i, %switch.next2.i.i ]
  ret float %common.ret.op.i.i, !dbg !2431
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable(sync)
define double @fmaximum(double %x, double %y) local_unnamed_addr #11 !dbg !2432 {
entry:
    #dbg_value(double %x, !2434, !DIExpression(), !2436)
    #dbg_value(double %y, !2435, !DIExpression(), !2436)
    #dbg_value(double %x, !2434, !DIExpression(), !2437)
    #dbg_value(double %y, !2435, !DIExpression(), !2438)
    #dbg_value(double %x, !2439, !DIExpression(), !2443)
    #dbg_value(double %y, !2442, !DIExpression(), !2443)
    #dbg_value(double %x, !2439, !DIExpression(), !2445)
    #dbg_value(double %y, !2442, !DIExpression(), !2446)
    #dbg_value(double %x, !2447, !DIExpression(), !2456)
    #dbg_value(double %y, !2450, !DIExpression(), !2456)
    #dbg_value(i64 9218868437227405313, !2451, !DIExpression(), !2456)
    #dbg_value(i64 9223372036854775807, !2452, !DIExpression(), !2456)
  %.cast.i.i = bitcast double %x to i64, !dbg !2458
    #dbg_value(i64 %.cast.i.i, !2453, !DIExpression(), !2459)
  %.cast6.i.i = bitcast double %y to i64, !dbg !2460
    #dbg_value(i64 %.cast6.i.i, !2454, !DIExpression(), !2461)
    #dbg_value(i64 %.cast.i.i, !2453, !DIExpression(), !2462)
  %0 = icmp slt i64 %.cast.i.i, 0, !dbg !2463
  %1 = xor i64 %.cast.i.i, 9223372036854775807
  %spec.select.i.i = select i1 %0, i64 %1, i64 %.cast.i.i, !dbg !2464
    #dbg_value(i64 %.cast6.i.i, !2454, !DIExpression(), !2465)
  %2 = icmp slt i64 %.cast6.i.i, 0, !dbg !2466
  %3 = xor i64 %.cast6.i.i, 9223372036854775807, !dbg !2464
  %4 = select i1 %2, i64 %3, i64 %.cast6.i.i, !dbg !2464
    #dbg_value(i64 9218868437227405313, !2451, !DIExpression(), !2467)
    #dbg_value(i64 -9218868437227405314, !2455, !DIExpression(), !2468)
    #dbg_value(i64 %spec.select.i.i, !2453, !DIExpression(), !2469)
    #dbg_value(i64 -9218868437227405314, !2455, !DIExpression(), !2470)
  %5 = icmp slt i64 %spec.select.i.i, -9218868437227405313, !dbg !2471
  br i1 %5, label %runtime.maximumFloat64.exit, label %switch.next.i.i, !dbg !2464

switch.next.i.i:                                  ; preds = %entry
    #dbg_value(i64 %4, !2454, !DIExpression(), !2472)
    #dbg_value(i64 -9218868437227405314, !2455, !DIExpression(), !2473)
  %6 = icmp slt i64 %4, -9218868437227405313, !dbg !2474
  br i1 %6, label %runtime.maximumFloat64.exit, label %switch.next4.i.i, !dbg !2464

switch.next4.i.i:                                 ; preds = %switch.next.i.i
    #dbg_value(i64 %spec.select.i.i, !2453, !DIExpression(), !2475)
    #dbg_value(i64 %4, !2454, !DIExpression(), !2476)
  %.not.i.i = icmp slt i64 %spec.select.i.i, %4, !dbg !2477
  %y.x.i.i = select i1 %.not.i.i, double %y, double %x, !dbg !2464
  br label %runtime.maximumFloat64.exit, !dbg !2464

runtime.maximumFloat64.exit:                      ; preds = %entry, %switch.next.i.i, %switch.next4.i.i
  %common.ret.op.i.i = phi double [ %x, %entry ], [ %y, %switch.next.i.i ], [ %y.x.i.i, %switch.next4.i.i ]
  ret double %common.ret.op.i.i, !dbg !2478
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable(sync)
define float @fmaximumf(float %x, float %y) local_unnamed_addr #11 !dbg !2479 {
entry:
    #dbg_value(float %x, !2481, !DIExpression(), !2483)
    #dbg_value(float %y, !2482, !DIExpression(), !2483)
    #dbg_value(float %x, !2481, !DIExpression(), !2484)
    #dbg_value(float %y, !2482, !DIExpression(), !2485)
    #dbg_value(float %x, !2486, !DIExpression(), !2490)
    #dbg_value(float %y, !2489, !DIExpression(), !2490)
    #dbg_value(float %x, !2486, !DIExpression(), !2492)
    #dbg_value(float %y, !2489, !DIExpression(), !2493)
    #dbg_value(float %x, !2494, !DIExpression(), !2503)
    #dbg_value(float %y, !2497, !DIExpression(), !2503)
    #dbg_value(i32 2139095041, !2498, !DIExpression(), !2503)
    #dbg_value(i32 2147483647, !2499, !DIExpression(), !2503)
  %.cast.i.i = bitcast float %x to i32, !dbg !2505
    #dbg_value(i32 %.cast.i.i, !2500, !DIExpression(), !2506)
  %.cast6.i.i = bitcast float %y to i32, !dbg !2507
    #dbg_value(i32 %.cast6.i.i, !2501, !DIExpression(), !2508)
    #dbg_value(i32 %.cast.i.i, !2500, !DIExpression(), !2509)
  %0 = icmp slt i32 %.cast.i.i, 0, !dbg !2510
  %1 = xor i32 %.cast.i.i, 2147483647
  %spec.select.i.i = select i1 %0, i32 %1, i32 %.cast.i.i, !dbg !2511
    #dbg_value(i32 %.cast6.i.i, !2501, !DIExpression(), !2512)
  %2 = icmp slt i32 %.cast6.i.i, 0, !dbg !2513
  %3 = xor i32 %.cast6.i.i, 2147483647, !dbg !2511
  %4 = select i1 %2, i32 %3, i32 %.cast6.i.i, !dbg !2511
    #dbg_value(i32 2139095041, !2498, !DIExpression(), !2514)
    #dbg_value(i32 -2139095042, !2502, !DIExpression(), !2515)
    #dbg_value(i32 %spec.select.i.i, !2500, !DIExpression(), !2516)
    #dbg_value(i32 -2139095042, !2502, !DIExpression(), !2517)
  %5 = icmp slt i32 %spec.select.i.i, -2139095041, !dbg !2518
  br i1 %5, label %runtime.maximumFloat32.exit, label %switch.next.i.i, !dbg !2511

switch.next.i.i:                                  ; preds = %entry
    #dbg_value(i32 %4, !2501, !DIExpression(), !2519)
    #dbg_value(i32 -2139095042, !2502, !DIExpression(), !2520)
  %6 = icmp slt i32 %4, -2139095041, !dbg !2521
  br i1 %6, label %runtime.maximumFloat32.exit, label %switch.next4.i.i, !dbg !2511

switch.next4.i.i:                                 ; preds = %switch.next.i.i
    #dbg_value(i32 %spec.select.i.i, !2500, !DIExpression(), !2522)
    #dbg_value(i32 %4, !2501, !DIExpression(), !2523)
  %.not.i.i = icmp slt i32 %spec.select.i.i, %4, !dbg !2524
  %y.x.i.i = select i1 %.not.i.i, float %y, float %x, !dbg !2511
  br label %runtime.maximumFloat32.exit, !dbg !2511

runtime.maximumFloat32.exit:                      ; preds = %entry, %switch.next.i.i, %switch.next4.i.i
  %common.ret.op.i.i = phi float [ %x, %entry ], [ %y, %switch.next.i.i ], [ %y.x.i.i, %switch.next4.i.i ]
  ret float %common.ret.op.i.i, !dbg !2525
}

declare void @GC_init() local_unnamed_addr #0

declare void @tinygo_runtime_bdwgc_init() local_unnamed_addr #0

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_runtime_bdwgc_callback() local_unnamed_addr #1 !dbg !2526 {
entry:
  %0 = call ptr @tinygo_task_current() #14, !dbg !2527
    #dbg_value(ptr %0, !1893, !DIExpression(), !2540)
    #dbg_value(ptr %0, !1893, !DIExpression(), !2541)
  %1 = icmp eq ptr %0, null, !dbg !2542
  br i1 %1, label %if.then.i.i.i, label %"internal/task.Current.exit.i.i", !dbg !2543

if.then.i.i.i:                                    ; preds = %entry
  call fastcc void @runtime.runtimePanic(ptr nonnull @"internal/task$string.7", i64 20), !dbg !2544
  unreachable, !dbg !2543

"internal/task.Current.exit.i.i":                 ; preds = %entry
    #dbg_value(ptr %0, !1893, !DIExpression(), !2545)
    #dbg_value(ptr %0, !2531, !DIExpression(), !2546)
    #dbg_value(ptr @"internal/task.gcState", !1939, !DIExpression(), !2547)
    #dbg_value(ptr @"internal/task.gcState", !1939, !DIExpression(), !2549)
    #dbg_value(ptr @"internal/task.gcState", !1947, !DIExpression(), !2550)
  %2 = load atomic i32, ptr @"internal/task.gcState" seq_cst, align 4, !dbg !2550
  %3 = icmp eq i32 %2, 0, !dbg !2552
  br i1 %3, label %if.then.i.i, label %if.done2.i.i, !dbg !2553

if.then.i.i:                                      ; preds = %"internal/task.Current.exit.i.i"
    #dbg_value(ptr @"internal/task.activeTaskLock", !1794, !DIExpression(), !2554)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1794, !DIExpression(), !2556)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1801, !DIExpression(), !2557)
    #dbg_value(i32 0, !1806, !DIExpression(), !2557)
    #dbg_value(i32 1, !1807, !DIExpression(), !2557)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1801, !DIExpression(), !2559)
    #dbg_value(i32 0, !1806, !DIExpression(), !2560)
    #dbg_value(i32 1, !1807, !DIExpression(), !2561)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1813, !DIExpression(), !2562)
    #dbg_value(i32 0, !1818, !DIExpression(), !2562)
    #dbg_value(i32 1, !1819, !DIExpression(), !2562)
  %4 = cmpxchg ptr @"internal/task.activeTaskLock", i32 0, i32 1 syncscope("singlethread") seq_cst seq_cst, align 4, !dbg !2562
  %5 = extractvalue { i32, i1 } %4, 1, !dbg !2562
  br i1 %5, label %"(*internal/task.Mutex).Lock.exit.i.i", label %for.loop.preheader.i.i.i, !dbg !2564

for.loop.preheader.i.i.i:                         ; preds = %if.then.i.i
    #dbg_value(ptr @"internal/task.activeTaskLock", !1794, !DIExpression(), !2565)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1745, !DIExpression(), !2566)
    #dbg_value(i32 2, !1752, !DIExpression(), !2566)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1745, !DIExpression(), !2568)
    #dbg_value(i32 2, !1752, !DIExpression(), !2569)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1757, !DIExpression(), !2570)
    #dbg_value(i32 2, !1764, !DIExpression(), !2570)
  %6 = atomicrmw xchg ptr @"internal/task.activeTaskLock", i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !2570
  %.not4.i.i.i = icmp eq i32 %6, 0, !dbg !2572
  br i1 %.not4.i.i.i, label %"(*internal/task.Mutex).Lock.exit.i.i", label %"(*internal/futex.Futex).Wait.exit.i.i.i", !dbg !2564

"(*internal/futex.Futex).Wait.exit.i.i.i":        ; preds = %for.loop.preheader.i.i.i, %"(*internal/futex.Futex).Wait.exit.i.i.i"
    #dbg_value(ptr @"internal/task.activeTaskLock", !1794, !DIExpression(), !2573)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1832, !DIExpression(), !2574)
    #dbg_value(i32 2, !1837, !DIExpression(), !2576)
  call void @tinygo_futex_wait(ptr nonnull dereferenceable_or_null(4) @"internal/task.activeTaskLock", i32 2) #14, !dbg !2577
    #dbg_value(ptr @"internal/task.activeTaskLock", !1745, !DIExpression(), !2568)
    #dbg_value(i32 2, !1752, !DIExpression(), !2569)
    #dbg_value(ptr @"internal/task.activeTaskLock", !1757, !DIExpression(), !2570)
    #dbg_value(i32 2, !1764, !DIExpression(), !2570)
  %7 = atomicrmw xchg ptr @"internal/task.activeTaskLock", i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !2570
  %.not.i.i.i = icmp eq i32 %7, 0, !dbg !2572
  br i1 %.not.i.i.i, label %"(*internal/task.Mutex).Lock.exit.i.i", label %"(*internal/futex.Futex).Wait.exit.i.i.i", !dbg !2564

"(*internal/task.Mutex).Lock.exit.i.i":           ; preds = %"(*internal/futex.Futex).Wait.exit.i.i.i", %for.loop.preheader.i.i.i, %if.then.i.i
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2578, !DIExpression(), !2582)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1939, !DIExpression(), !2584)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1939, !DIExpression(), !2586)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1947, !DIExpression(), !2587)
  %8 = load atomic i32, ptr @"internal/task.scanWaitGroup" seq_cst, align 4, !dbg !2587
  %9 = icmp eq i32 %8, 0, !dbg !2589
  br i1 %9, label %"(*internal/task.waitGroup).wait.exit.i.i", label %gep.next4.i.i.i, !dbg !2590

gep.next4.i.i.i:                                  ; preds = %"(*internal/task.Mutex).Lock.exit.i.i", %gep.next4.i.i.i
  %10 = phi i32 [ %11, %gep.next4.i.i.i ], [ %8, %"(*internal/task.Mutex).Lock.exit.i.i" ]
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2578, !DIExpression(), !2591)
    #dbg_value(i32 %10, !2581, !DIExpression(), !2592)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1832, !DIExpression(), !2593)
    #dbg_value(i32 %10, !1837, !DIExpression(), !2595)
  call void @tinygo_futex_wait(ptr nonnull @"internal/task.scanWaitGroup", i32 range(i32 1, 0) %10) #14, !dbg !2596
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1939, !DIExpression(), !2586)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1947, !DIExpression(), !2587)
  %11 = load atomic i32, ptr @"internal/task.scanWaitGroup" seq_cst, align 4, !dbg !2587
    #dbg_value(i32 %11, !2581, !DIExpression(), !2597)
  %12 = icmp eq i32 %11, 0, !dbg !2589
  br i1 %12, label %"(*internal/task.waitGroup).wait.exit.i.i", label %gep.next4.i.i.i, !dbg !2590

"(*internal/task.waitGroup).wait.exit.i.i":       ; preds = %gep.next4.i.i.i, %"(*internal/task.Mutex).Lock.exit.i.i"
    #dbg_value(ptr @"internal/task.gcState", !2042, !DIExpression(), !2598)
    #dbg_value(i32 1, !2045, !DIExpression(), !2598)
    #dbg_value(ptr @"internal/task.gcState", !2042, !DIExpression(), !2600)
    #dbg_value(i32 1, !2045, !DIExpression(), !2601)
    #dbg_value(ptr @"internal/task.gcState", !2050, !DIExpression(), !2602)
    #dbg_value(i32 1, !2053, !DIExpression(), !2602)
  store atomic i32 1, ptr @"internal/task.gcState" seq_cst, align 4, !dbg !2602
  %13 = load i32, ptr @"internal/task.otherGoroutines", align 4, !dbg !2604
    #dbg_value(i32 %13, !2532, !DIExpression(), !2604)
  store i32 %13, ptr @"internal/task.scanWaitGroup", align 4, !dbg !2605
    #dbg_value(%"internal/task.Semaphore" poison, !2533, !DIExpression(), !2605)
    #dbg_value(ptr poison, !2534, !DIExpression(), !2606)
    #dbg_value(ptr poison, !2535, !DIExpression(), !2607)
  %14 = load ptr, ptr @"internal/task.activeTasks", align 8, !dbg !2608
  %.not23.i.i = icmp eq ptr %14, null, !dbg !2609
  br i1 %.not23.i.i, label %for.done.i.i, label %for.body.i.i, !dbg !2553

for.body.i.i:                                     ; preds = %"(*internal/task.waitGroup).wait.exit.i.i", %deref.next15.i.i
  %15 = phi ptr [ %19, %deref.next15.i.i ], [ %14, %"(*internal/task.waitGroup).wait.exit.i.i" ]
    #dbg_value(ptr %15, !2535, !DIExpression(), !2610)
    #dbg_value(ptr %0, !2531, !DIExpression(), !2611)
  %.not16.i.i = icmp eq ptr %15, %0, !dbg !2612
  br i1 %.not16.i.i, label %deref.next15.i.i, label %deref.next.i.i, !dbg !2553

deref.next.i.i:                                   ; preds = %for.body.i.i
    #dbg_value(ptr %15, !2535, !DIExpression(), !2613)
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 32, !dbg !2614
  %17 = load ptr, ptr %16, align 8, !dbg !2614
  call void @tinygo_task_send_gc_signal(ptr %17) #14, !dbg !2615
  br label %deref.next15.i.i, !dbg !2553

deref.next15.i.i:                                 ; preds = %deref.next.i.i, %for.body.i.i
    #dbg_value(ptr %15, !2535, !DIExpression(), !2616)
  %18 = getelementptr inbounds nuw i8, ptr %15, i64 56, !dbg !2617
    #dbg_value(ptr poison, !2535, !DIExpression(), !2618)
  %19 = load ptr, ptr %18, align 8, !dbg !2608
    #dbg_value(ptr %19, !2535, !DIExpression(), !2619)
  %.not.i.i = icmp eq ptr %19, null, !dbg !2609
  br i1 %.not.i.i, label %for.done.i.i, label %for.body.i.i, !dbg !2553

for.done.i.i:                                     ; preds = %deref.next15.i.i, %"(*internal/task.waitGroup).wait.exit.i.i"
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2578, !DIExpression(), !2620)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1939, !DIExpression(), !2622)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1939, !DIExpression(), !2624)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1947, !DIExpression(), !2625)
  %20 = load atomic i32, ptr @"internal/task.scanWaitGroup" seq_cst, align 4, !dbg !2625
  %21 = icmp eq i32 %20, 0, !dbg !2627
  br i1 %21, label %if.done2.i.i, label %gep.next4.i20.i.i, !dbg !2628

gep.next4.i20.i.i:                                ; preds = %for.done.i.i, %gep.next4.i20.i.i
  %22 = phi i32 [ %23, %gep.next4.i20.i.i ], [ %20, %for.done.i.i ]
    #dbg_value(ptr @"internal/task.scanWaitGroup", !2578, !DIExpression(), !2629)
    #dbg_value(i32 %22, !2581, !DIExpression(), !2630)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1832, !DIExpression(), !2631)
    #dbg_value(i32 %22, !1837, !DIExpression(), !2633)
  call void @tinygo_futex_wait(ptr nonnull @"internal/task.scanWaitGroup", i32 range(i32 1, 0) %22) #14, !dbg !2634
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1939, !DIExpression(), !2624)
    #dbg_value(ptr @"internal/task.scanWaitGroup", !1947, !DIExpression(), !2625)
  %23 = load atomic i32, ptr @"internal/task.scanWaitGroup" seq_cst, align 4, !dbg !2625
    #dbg_value(i32 %23, !2581, !DIExpression(), !2635)
  %24 = icmp eq i32 %23, 0, !dbg !2627
  br i1 %24, label %if.done2.i.i, label %gep.next4.i20.i.i, !dbg !2628

if.done2.i.i:                                     ; preds = %gep.next4.i20.i.i, %for.done.i.i, %"internal/task.Current.exit.i.i"
    #dbg_value(ptr poison, !2534, !DIExpression(), !2636)
    #dbg_value(ptr poison, !2536, !DIExpression(), !2637)
  %25 = load ptr, ptr @"internal/task.activeTasks", align 8, !dbg !2638
  %.not1424.i.i = icmp eq ptr %25, null, !dbg !2639
  br i1 %.not1424.i.i, label %for.done7.i.i, label %for.body4.i.i, !dbg !2553

for.body4.i.i:                                    ; preds = %if.done2.i.i, %deref.next33.i.i
  %26 = phi ptr [ %32, %deref.next33.i.i ], [ %25, %if.done2.i.i ]
    #dbg_value(ptr %26, !2536, !DIExpression(), !2640)
    #dbg_value(ptr %0, !2531, !DIExpression(), !2641)
  %.not15.i.i = icmp eq ptr %26, %0, !dbg !2642
  br i1 %.not15.i.i, label %deref.next33.i.i, label %deref.next21.i.i, !dbg !2553

deref.next21.i.i:                                 ; preds = %for.body4.i.i
    #dbg_value(ptr %26, !2536, !DIExpression(), !2643)
  %27 = getelementptr inbounds nuw i8, ptr %26, i64 48, !dbg !2644
  %28 = load i64, ptr %27, align 8, !dbg !2644
    #dbg_value(ptr %26, !2536, !DIExpression(), !2645)
  %29 = getelementptr inbounds nuw i8, ptr %26, i64 40, !dbg !2646
  %30 = load i64, ptr %29, align 8, !dbg !2646
    #dbg_value(i64 %28, !2647, !DIExpression(), !2653)
    #dbg_value(i64 %30, !2652, !DIExpression(), !2653)
    #dbg_value(i64 %28, !2647, !DIExpression(), !2655)
    #dbg_value(i64 %30, !2652, !DIExpression(), !2656)
  call void @GC_push_all(i64 %28, i64 %30) #14, !dbg !2657
  br label %deref.next33.i.i, !dbg !2553

deref.next33.i.i:                                 ; preds = %deref.next21.i.i, %for.body4.i.i
    #dbg_value(ptr %26, !2536, !DIExpression(), !2658)
  %31 = getelementptr inbounds nuw i8, ptr %26, i64 56, !dbg !2659
    #dbg_value(ptr poison, !2536, !DIExpression(), !2660)
  %32 = load ptr, ptr %31, align 8, !dbg !2638
    #dbg_value(ptr %32, !2536, !DIExpression(), !2661)
  %.not14.i.i = icmp eq ptr %32, null, !dbg !2639
  br i1 %.not14.i.i, label %for.done7.i.i, label %for.body4.i.i, !dbg !2553

for.done7.i.i:                                    ; preds = %deref.next33.i.i, %if.done2.i.i
  call void @tinygo_scanCurrentStack() #14, !dbg !2662
    #dbg_value(ptr undef, !2663, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2695)
    #dbg_value(ptr poison, !2663, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2695)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !2669, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !2699)
    #dbg_value(i64 0, !2670, !DIExpression(), !2700)
  %33 = load i16, ptr getelementptr inbounds nuw (i8, ptr @__ehdr_start, i64 56), align 2, !dbg !2701
  %.not8.i.i.i.i = icmp eq i16 %33, 0, !dbg !2702
  br i1 %.not8.i.i.i.i, label %runtime.gcMarkReachable.exit, label %if.then.preheader.i.i.i.i, !dbg !2703

if.then.preheader.i.i.i.i:                        ; preds = %for.done7.i.i
  %34 = load i64, ptr getelementptr inbounds nuw (i8, ptr @__ehdr_start, i64 32), align 8, !dbg !2704
    #dbg_value(!DIArgList(i64 %34, i64 ptrtoint (ptr @__ehdr_start to i64)), !2669, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !2699)
  %35 = add i64 %34, ptrtoint (ptr @__ehdr_start to i64), !dbg !2705
    #dbg_value(i64 %35, !2669, !DIExpression(), !2699)
  %36 = inttoptr i64 %35 to ptr, !dbg !2706
    #dbg_value(ptr %36, !2669, !DIExpression(), !2699)
  br label %if.then.i.i.i.i, !dbg !2707

if.then.i.i.i.i:                                  ; preds = %if.done.i.i.i.i, %if.then.preheader.i.i.i.i
  %37 = phi i64 [ %53, %if.done.i.i.i.i ], [ 0, %if.then.preheader.i.i.i.i ]
  %38 = phi ptr [ %52, %if.done.i.i.i.i ], [ %36, %if.then.preheader.i.i.i.i ]
    #dbg_value(i64 %37, !2670, !DIExpression(), !2708)
    #dbg_value(ptr %38, !2669, !DIExpression(), !2709)
    #dbg_value(ptr %38, !2671, !DIExpression(), !2710)
    #dbg_value(ptr %38, !2671, !DIExpression(), !2711)
  %39 = icmp eq ptr %38, null, !dbg !2707
  br i1 %39, label %deref.throw.i.i.i.i, label %deref.next.i.i.i.i, !dbg !2707

deref.next.i.i.i.i:                               ; preds = %if.then.i.i.i.i
  %40 = load i32, ptr %38, align 4, !dbg !2707
  %41 = icmp eq i32 %40, 1, !dbg !2712
  br i1 %41, label %deref.next5.i.i.i.i, label %if.done.i.i.i.i, !dbg !2703

deref.next5.i.i.i.i:                              ; preds = %deref.next.i.i.i.i
    #dbg_value(ptr %38, !2671, !DIExpression(), !2713)
  %42 = getelementptr inbounds nuw i8, ptr %38, i64 4, !dbg !2714
  %43 = load i32, ptr %42, align 4, !dbg !2714
  %44 = and i32 %43, 2, !dbg !2715
  %.not.i.i.i.i = icmp eq i32 %44, 0, !dbg !2716
  br i1 %.not.i.i.i.i, label %if.done.i.i.i.i, label %deref.next7.i.i.i.i, !dbg !2703

deref.next7.i.i.i.i:                              ; preds = %deref.next5.i.i.i.i
    #dbg_value(ptr %38, !2671, !DIExpression(), !2717)
  %45 = getelementptr inbounds nuw i8, ptr %38, i64 16, !dbg !2718
  %46 = load i64, ptr %45, align 8, !dbg !2718
    #dbg_value(i64 %46, !2684, !DIExpression(), !2719)
    #dbg_value(i64 %46, !2684, !DIExpression(), !2720)
    #dbg_value(ptr %38, !2671, !DIExpression(), !2721)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !2685, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !2722)
    #dbg_value({ ptr, ptr } poison, !2663, !DIExpression(), !2723)
    #dbg_value(i64 %46, !2684, !DIExpression(), !2724)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !2685, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !2725)
  %47 = getelementptr inbounds nuw i8, ptr %38, i64 40, !dbg !2726
  %48 = load i64, ptr %47, align 8, !dbg !2726
    #dbg_value(!DIArgList(i64 %46, i64 %48), !2685, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !2725)
  %49 = add i64 %48, %46, !dbg !2727
    #dbg_value(i64 %49, !2685, !DIExpression(), !2725)
    #dbg_value(i64 %46, !2647, !DIExpression(), !2728)
    #dbg_value(i64 %49, !2652, !DIExpression(), !2728)
    #dbg_value(i64 %46, !2647, !DIExpression(), !2730)
    #dbg_value(i64 %49, !2652, !DIExpression(), !2731)
  call void @GC_push_all(i64 %46, i64 %49) #14, !dbg !2732
  br label %if.done.i.i.i.i, !dbg !2703

if.done.i.i.i.i:                                  ; preds = %deref.next7.i.i.i.i, %deref.next5.i.i.i.i, %deref.next.i.i.i.i
    #dbg_value(ptr %38, !2669, !DIExpression(), !2733)
  %50 = load i16, ptr getelementptr inbounds nuw (i8, ptr @__ehdr_start, i64 54), align 2, !dbg !2734
  %51 = sext i16 %50 to i64, !dbg !2735
  %52 = getelementptr i8, ptr %38, i64 %51, !dbg !2735
    #dbg_value(ptr %52, !2669, !DIExpression(), !2736)
  %53 = add nuw nsw i64 %37, 1, !dbg !2737
    #dbg_value(i64 %53, !2670, !DIExpression(), !2708)
  %54 = load i16, ptr getelementptr inbounds nuw (i8, ptr @__ehdr_start, i64 56), align 2, !dbg !2701
  %55 = zext i16 %54 to i64, !dbg !2738
  %56 = icmp samesign ult i64 %53, %55, !dbg !2702
  br i1 %56, label %if.then.i.i.i.i, label %runtime.gcMarkReachable.exit, !dbg !2703

deref.throw.i.i.i.i:                              ; preds = %if.then.i.i.i.i
  call fastcc void @runtime.nilPanic(), !dbg !2707
  unreachable, !dbg !2707

runtime.gcMarkReachable.exit:                     ; preds = %if.done.i.i.i.i, %for.done7.i.i
  ret void, !dbg !2739
}

declare void @GC_push_all(i64, i64) local_unnamed_addr #0

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_scanstack(i64 %sp) local_unnamed_addr #1 !dbg !2740 {
entry:
    #dbg_value(i64 %sp, !2743, !DIExpression(), !2744)
    #dbg_value(i64 %sp, !2743, !DIExpression(), !2745)
  %0 = call ptr @tinygo_task_current() #14, !dbg !2746
    #dbg_value(ptr %0, !1893, !DIExpression(), !2750)
    #dbg_value(ptr %0, !1893, !DIExpression(), !2751)
  %1 = icmp eq ptr %0, null, !dbg !2752
  br i1 %1, label %if.then.i.i, label %"internal/task.StackTop.exit", !dbg !2753

if.then.i.i:                                      ; preds = %entry
  call fastcc void @runtime.runtimePanic(ptr nonnull @"internal/task$string.7", i64 20), !dbg !2754
  unreachable, !dbg !2753

"internal/task.StackTop.exit":                    ; preds = %entry
    #dbg_value(ptr %0, !1893, !DIExpression(), !2755)
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !2756
  %3 = load i64, ptr %2, align 8, !dbg !2756
    #dbg_value(i64 %sp, !2647, !DIExpression(), !2757)
    #dbg_value(i64 %3, !2652, !DIExpression(), !2757)
    #dbg_value(i64 %sp, !2647, !DIExpression(), !2759)
    #dbg_value(i64 %3, !2652, !DIExpression(), !2760)
  call void @GC_push_all(i64 %sp, i64 %3) #14, !dbg !2761
  ret void, !dbg !2762
}

; Function Attrs: nounwind uwtable(sync)
define noundef i64 @main(i32 %argc, ptr nocapture dereferenceable_or_null(8) %argv) local_unnamed_addr #1 !dbg !2763 {
entry:
    #dbg_value(i32 %argc, !2767, !DIExpression(), !2772)
    #dbg_value(ptr %argv, !2768, !DIExpression(), !2772)
    #dbg_value(i32 %argc, !2767, !DIExpression(), !2773)
    #dbg_value(i32 %argc, !2769, !DIExpression(), !2774)
    #dbg_value(ptr %argv, !2768, !DIExpression(), !2775)
  store ptr %argv, ptr @runtime.main_argv, align 8, !dbg !2776
    #dbg_value(ptr %argv, !2770, !DIExpression(), !2776)
  call void @tinygo_register_fatal_signals() #14, !dbg !2777
  %0 = call ptr @llvm.stacksave.p0(), !dbg !2778
  %1 = ptrtoint ptr %0 to i64, !dbg !2783
  store i64 %1, ptr @runtime.stackTop, align 8, !dbg !2784
    #dbg_value(i64 %1, !2771, !DIExpression(), !2784)
  call fastcc void @runtime.runMain(), !dbg !2785
  ret i64 0, !dbg !2786
}

declare void @tinygo_register_fatal_signals() local_unnamed_addr #0

; Function Attrs: noinline nounwind uwtable(sync)
define internal fastcc void @runtime.runMain() unnamed_addr #12 !dbg !2787 {
entry:
  %stackalloc.i.i.i = alloca [8 x i8], align 8, !dbg !2788
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %stackalloc.i.i.i), !dbg !2788
  store i64 0, ptr %stackalloc.i.i.i, align 8, !dbg !2788
  %0 = call i32 @getrandom(ptr nonnull %stackalloc.i.i.i, i64 8, i32 0) #14, !dbg !2804
    #dbg_value(i32 %0, !2791, !DIExpression(), !2805)
    #dbg_value(i32 %0, !2791, !DIExpression(), !2806)
  %.not.i.i.i = icmp eq i32 %0, 8, !dbg !2807
  br i1 %.not.i.i.i, label %runtime.run.exit, label %if.then.i.i.i, !dbg !2808

if.then.i.i.i:                                    ; preds = %entry
  store i64 0, ptr %stackalloc.i.i.i, align 8, !dbg !2809
  br label %runtime.run.exit, !dbg !2809

runtime.run.exit:                                 ; preds = %entry, %if.then.i.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %stackalloc.i.i.i), !dbg !2808
    #dbg_value(i64 poison, !2796, !DIExpression(), !2810)
    #dbg_value(i64 poison, !2796, !DIExpression(), !2811)
    #dbg_value(i64 poison, !2797, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !2812)
    #dbg_value(i64 poison, !2797, !DIExpression(), !2813)
    #dbg_value(i64 poison, !2798, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !2814)
  call void @GC_init() #14, !dbg !2815
  call void @tinygo_runtime_bdwgc_init() #14, !dbg !2818
  %1 = load i64, ptr @runtime.stackTop, align 8, !dbg !2819
    #dbg_value(i64 %1, !2802, !DIExpression(), !2819)
    #dbg_value(i64 %1, !2820, !DIExpression(), !2824)
    #dbg_value(i64 %1, !2820, !DIExpression(), !2826)
  store i64 %1, ptr getelementptr inbounds nuw (i8, ptr @"internal/task.mainTask", i64 40), align 8, !dbg !2827
    #dbg_value(i64 %1, !2823, !DIExpression(), !2827)
  call void @tinygo_task_init(ptr nonnull @"internal/task.mainTask", ptr nonnull getelementptr inbounds nuw (i8, ptr @"internal/task.mainTask", i64 32), ptr nonnull @"internal/task.numCPU", ptr undef) #14, !dbg !2828
  call void @main.main(ptr undef) #14, !dbg !2829
  ret void, !dbg !2830
}

declare void @main.main(ptr) local_unnamed_addr #0

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_handle_fatal_signal(i32 %sig, i64 %addr) local_unnamed_addr #1 !dbg !2831 {
entry:
  %stackalloc.i.i46 = alloca [1 x i8], align 1, !dbg !2837
  %stackalloc.i.i42 = alloca [1 x i8], align 1, !dbg !2840
  %stackalloc.i.i.i.i = alloca [1 x i8], align 1, !dbg !2843
    #dbg_value(i64 %66, !2849, !DIExpression(), !2865)
  %digits.i.i.i = alloca [20 x i8], align 1, !dbg !2866
  %stackalloc.i.i41 = alloca [1 x i8], align 1, !dbg !2867
  %stackalloc.i.i32 = alloca [1 x i8], align 1, !dbg !2869
  %stackalloc.i.i28 = alloca [1 x i8], align 1, !dbg !2872
  %stackalloc.i.i19 = alloca [1 x i8], align 1, !dbg !2875
  %stackalloc.i.i15 = alloca [1 x i8], align 1, !dbg !2878
  %stackalloc.i.i9 = alloca [1 x i8], align 1, !dbg !2881
  %stackalloc.i.i5 = alloca [1 x i8], align 1, !dbg !2884
  %stackalloc.i.i1 = alloca [1 x i8], align 1, !dbg !2887
  %stackalloc.i.i = alloca [1 x i8], align 1, !dbg !2890
    #dbg_value(i32 %sig, !2835, !DIExpression(), !2893)
    #dbg_value(i64 %addr, !2836, !DIExpression(), !2893)
    #dbg_value(i64 %addr, !2836, !DIExpression(), !2894)
  %.not = icmp eq i64 %addr, 0, !dbg !2895
  br i1 %.not, label %for.body.i47, label %for.body.i, !dbg !2896

for.body.i:                                       ; preds = %entry, %for.body.i
  %0 = phi i64 [ %4, %for.body.i ], [ 0, %entry ]
    #dbg_value(i64 %0, !2129, !DIExpression(), !2897)
    #dbg_value(%runtime._string poison, !2128, !DIExpression(), !2898)
  %1 = getelementptr inbounds nuw i8, ptr @"runtime$string.50", i64 %0, !dbg !2899
  %2 = load i8, ptr %1, align 1, !dbg !2899
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !2900
    #dbg_value(i8 %2, !2136, !DIExpression(), !2900)
  store i8 %2, ptr %stackalloc.i.i, align 1, !dbg !2900
  %3 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i, i64 1) #14, !dbg !2901
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i), !dbg !2902
  %4 = add nuw nsw i64 %0, 1, !dbg !2903
    #dbg_value(i64 %4, !2129, !DIExpression(), !2904)
  %exitcond.not.i = icmp eq i64 %4, 24, !dbg !2905
  br i1 %exitcond.not.i, label %runtime.printstring.exit, label %for.body.i, !dbg !2906

runtime.printstring.exit:                         ; preds = %for.body.i
    #dbg_value(i64 %addr, !2836, !DIExpression(), !2907)
  call fastcc void @runtime.printptr(i64 %addr), !dbg !2908
  br label %for.body.i2, !dbg !2896

for.body.i2:                                      ; preds = %runtime.printstring.exit, %for.body.i47
    #dbg_value(ptr poison, !2128, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2909)
    #dbg_value(i64 16, !2128, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2909)
    #dbg_value(i64 0, !2129, !DIExpression(), !2910)
    #dbg_value(%runtime._string poison, !2128, !DIExpression(), !2911)
    #dbg_value(i64 0, !2129, !DIExpression(), !2912)
    #dbg_value(%runtime._string poison, !2128, !DIExpression(), !2913)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2914
    #dbg_value(i8 58, !2136, !DIExpression(), !2914)
  store i8 58, ptr %stackalloc.i.i1, align 1, !dbg !2914
  %5 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #14, !dbg !2915
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2916
    #dbg_value(i64 1, !2129, !DIExpression(), !2917)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2914
    #dbg_value(i8 32, !2136, !DIExpression(), !2914)
  store i8 32, ptr %stackalloc.i.i1, align 1, !dbg !2914
  %6 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #14, !dbg !2915
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2916
    #dbg_value(i64 2, !2129, !DIExpression(), !2917)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2914
    #dbg_value(i8 99, !2136, !DIExpression(), !2914)
  store i8 99, ptr %stackalloc.i.i1, align 1, !dbg !2914
  %7 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #14, !dbg !2915
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2916
    #dbg_value(i64 3, !2129, !DIExpression(), !2917)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2914
    #dbg_value(i8 97, !2136, !DIExpression(), !2914)
  store i8 97, ptr %stackalloc.i.i1, align 1, !dbg !2914
  %8 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #14, !dbg !2915
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2916
    #dbg_value(i64 4, !2129, !DIExpression(), !2917)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2914
    #dbg_value(i8 117, !2136, !DIExpression(), !2914)
  store i8 117, ptr %stackalloc.i.i1, align 1, !dbg !2914
  %9 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #14, !dbg !2915
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2916
    #dbg_value(i64 5, !2129, !DIExpression(), !2917)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2914
    #dbg_value(i8 103, !2136, !DIExpression(), !2914)
  store i8 103, ptr %stackalloc.i.i1, align 1, !dbg !2914
  %10 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #14, !dbg !2915
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2916
    #dbg_value(i64 6, !2129, !DIExpression(), !2917)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2914
    #dbg_value(i8 104, !2136, !DIExpression(), !2914)
  store i8 104, ptr %stackalloc.i.i1, align 1, !dbg !2914
  %11 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #14, !dbg !2915
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2916
    #dbg_value(i64 7, !2129, !DIExpression(), !2917)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2914
    #dbg_value(i8 116, !2136, !DIExpression(), !2914)
  store i8 116, ptr %stackalloc.i.i1, align 1, !dbg !2914
  %12 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #14, !dbg !2915
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2916
    #dbg_value(i64 8, !2129, !DIExpression(), !2917)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2914
    #dbg_value(i8 32, !2136, !DIExpression(), !2914)
  store i8 32, ptr %stackalloc.i.i1, align 1, !dbg !2914
  %13 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #14, !dbg !2915
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2916
    #dbg_value(i64 9, !2129, !DIExpression(), !2917)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2914
    #dbg_value(i8 115, !2136, !DIExpression(), !2914)
  store i8 115, ptr %stackalloc.i.i1, align 1, !dbg !2914
  %14 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #14, !dbg !2915
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2916
    #dbg_value(i64 10, !2129, !DIExpression(), !2917)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2914
    #dbg_value(i8 105, !2136, !DIExpression(), !2914)
  store i8 105, ptr %stackalloc.i.i1, align 1, !dbg !2914
  %15 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #14, !dbg !2915
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2916
    #dbg_value(i64 11, !2129, !DIExpression(), !2917)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2914
    #dbg_value(i8 103, !2136, !DIExpression(), !2914)
  store i8 103, ptr %stackalloc.i.i1, align 1, !dbg !2914
  %16 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #14, !dbg !2915
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2916
    #dbg_value(i64 12, !2129, !DIExpression(), !2917)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2914
    #dbg_value(i8 110, !2136, !DIExpression(), !2914)
  store i8 110, ptr %stackalloc.i.i1, align 1, !dbg !2914
  %17 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #14, !dbg !2915
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2916
    #dbg_value(i64 13, !2129, !DIExpression(), !2917)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2914
    #dbg_value(i8 97, !2136, !DIExpression(), !2914)
  store i8 97, ptr %stackalloc.i.i1, align 1, !dbg !2914
  %18 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #14, !dbg !2915
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2916
    #dbg_value(i64 14, !2129, !DIExpression(), !2917)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2914
    #dbg_value(i8 108, !2136, !DIExpression(), !2914)
  store i8 108, ptr %stackalloc.i.i1, align 1, !dbg !2914
  %19 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #14, !dbg !2915
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2916
    #dbg_value(i64 15, !2129, !DIExpression(), !2917)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2914
    #dbg_value(i8 32, !2136, !DIExpression(), !2914)
  store i8 32, ptr %stackalloc.i.i1, align 1, !dbg !2914
  %20 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i1, i64 1) #14, !dbg !2915
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i1), !dbg !2916
    #dbg_value(i64 16, !2129, !DIExpression(), !2917)
    #dbg_value(i32 %sig, !2835, !DIExpression(), !2918)
  switch i32 %sig, label %switch.next6 [
    i32 7, label %switch.body
    i32 4, label %switch.body3
    i32 11, label %switch.body5
  ], !dbg !2896

switch.body:                                      ; preds = %for.body.i2
    #dbg_value(ptr @runtime.printLock, !1794, !DIExpression(), !2919)
    #dbg_value(ptr @runtime.printLock, !1794, !DIExpression(), !2923)
    #dbg_value(ptr @runtime.printLock, !1801, !DIExpression(), !2924)
    #dbg_value(i32 0, !1806, !DIExpression(), !2924)
    #dbg_value(i32 1, !1807, !DIExpression(), !2924)
    #dbg_value(ptr @runtime.printLock, !1801, !DIExpression(), !2926)
    #dbg_value(i32 0, !1806, !DIExpression(), !2927)
    #dbg_value(i32 1, !1807, !DIExpression(), !2928)
    #dbg_value(ptr @runtime.printLock, !1813, !DIExpression(), !2929)
    #dbg_value(i32 0, !1818, !DIExpression(), !2929)
    #dbg_value(i32 1, !1819, !DIExpression(), !2929)
  %21 = cmpxchg ptr @runtime.printLock, i32 0, i32 1 syncscope("singlethread") seq_cst seq_cst, align 4, !dbg !2929
  %22 = extractvalue { i32, i1 } %21, 1, !dbg !2929
  br i1 %22, label %for.body.i6, label %for.loop.preheader.i.i, !dbg !2931

for.loop.preheader.i.i:                           ; preds = %switch.body
    #dbg_value(ptr @runtime.printLock, !1794, !DIExpression(), !2932)
    #dbg_value(ptr @runtime.printLock, !1745, !DIExpression(), !2933)
    #dbg_value(i32 2, !1752, !DIExpression(), !2933)
    #dbg_value(ptr @runtime.printLock, !1745, !DIExpression(), !2935)
    #dbg_value(i32 2, !1752, !DIExpression(), !2936)
    #dbg_value(ptr @runtime.printLock, !1757, !DIExpression(), !2937)
    #dbg_value(i32 2, !1764, !DIExpression(), !2937)
  %23 = atomicrmw xchg ptr @runtime.printLock, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !2937
  %.not4.i.i = icmp eq i32 %23, 0, !dbg !2939
  br i1 %.not4.i.i, label %for.body.i6, label %"(*internal/futex.Futex).Wait.exit.i.i", !dbg !2931

"(*internal/futex.Futex).Wait.exit.i.i":          ; preds = %for.loop.preheader.i.i, %"(*internal/futex.Futex).Wait.exit.i.i"
    #dbg_value(ptr @runtime.printLock, !1794, !DIExpression(), !2940)
    #dbg_value(ptr @runtime.printLock, !1832, !DIExpression(), !2941)
    #dbg_value(i32 2, !1837, !DIExpression(), !2943)
  call void @tinygo_futex_wait(ptr nonnull dereferenceable_or_null(4) @runtime.printLock, i32 2) #14, !dbg !2944
    #dbg_value(ptr @runtime.printLock, !1745, !DIExpression(), !2935)
    #dbg_value(i32 2, !1752, !DIExpression(), !2936)
    #dbg_value(ptr @runtime.printLock, !1757, !DIExpression(), !2937)
    #dbg_value(i32 2, !1764, !DIExpression(), !2937)
  %24 = atomicrmw xchg ptr @runtime.printLock, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !2937
  %.not.i.i = icmp eq i32 %24, 0, !dbg !2939
  br i1 %.not.i.i, label %for.body.i6, label %"(*internal/futex.Futex).Wait.exit.i.i", !dbg !2931

for.body.i6:                                      ; preds = %for.loop.preheader.i.i, %switch.body, %"(*internal/futex.Futex).Wait.exit.i.i"
    #dbg_value(ptr poison, !2128, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2945)
    #dbg_value(i64 6, !2128, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2945)
    #dbg_value(i64 0, !2129, !DIExpression(), !2946)
    #dbg_value(%runtime._string poison, !2128, !DIExpression(), !2947)
    #dbg_value(i64 0, !2129, !DIExpression(), !2948)
    #dbg_value(%runtime._string poison, !2128, !DIExpression(), !2949)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !2950
    #dbg_value(i8 83, !2136, !DIExpression(), !2950)
  store i8 83, ptr %stackalloc.i.i5, align 1, !dbg !2950
  %25 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i5, i64 1) #14, !dbg !2951
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !2952
    #dbg_value(i64 1, !2129, !DIExpression(), !2953)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !2950
    #dbg_value(i8 73, !2136, !DIExpression(), !2950)
  store i8 73, ptr %stackalloc.i.i5, align 1, !dbg !2950
  %26 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i5, i64 1) #14, !dbg !2951
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !2952
    #dbg_value(i64 2, !2129, !DIExpression(), !2953)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !2950
    #dbg_value(i8 71, !2136, !DIExpression(), !2950)
  store i8 71, ptr %stackalloc.i.i5, align 1, !dbg !2950
  %27 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i5, i64 1) #14, !dbg !2951
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !2952
    #dbg_value(i64 3, !2129, !DIExpression(), !2953)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !2950
    #dbg_value(i8 66, !2136, !DIExpression(), !2950)
  store i8 66, ptr %stackalloc.i.i5, align 1, !dbg !2950
  %28 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i5, i64 1) #14, !dbg !2951
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !2952
    #dbg_value(i64 4, !2129, !DIExpression(), !2953)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !2950
    #dbg_value(i8 85, !2136, !DIExpression(), !2950)
  store i8 85, ptr %stackalloc.i.i5, align 1, !dbg !2950
  %29 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i5, i64 1) #14, !dbg !2951
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !2952
    #dbg_value(i64 5, !2129, !DIExpression(), !2953)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !2950
    #dbg_value(i8 83, !2136, !DIExpression(), !2950)
  store i8 83, ptr %stackalloc.i.i5, align 1, !dbg !2950
  %30 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i5, i64 1) #14, !dbg !2951
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i5), !dbg !2952
    #dbg_value(i64 6, !2129, !DIExpression(), !2953)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i9), !dbg !2954
    #dbg_value(i8 10, !2136, !DIExpression(), !2954)
  store i8 10, ptr %stackalloc.i.i9, align 1, !dbg !2954
  %31 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i9, i64 1) #14, !dbg !2955
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i9), !dbg !2956
    #dbg_value(ptr @runtime.printLock, !1740, !DIExpression(), !2957)
    #dbg_value(ptr @runtime.printLock, !1745, !DIExpression(), !2961)
    #dbg_value(i32 0, !1752, !DIExpression(), !2963)
    #dbg_value(ptr @runtime.printLock, !1757, !DIExpression(), !2964)
    #dbg_value(i32 0, !1764, !DIExpression(), !2964)
  %32 = atomicrmw xchg ptr @runtime.printLock, i32 0 syncscope("singlethread") seq_cst, align 4, !dbg !2964
    #dbg_value(i32 %32, !1741, !DIExpression(), !2966)
  switch i32 %32, label %switch.done [
    i32 0, label %if.then.i.i
    i32 2, label %gep.next5.i.i
  ], !dbg !2967

if.then.i.i:                                      ; preds = %for.body.i6
  call fastcc void @runtime._panic(), !dbg !2968
  unreachable, !dbg !2968

gep.next5.i.i:                                    ; preds = %for.body.i6
    #dbg_value(ptr @runtime.printLock, !1740, !DIExpression(), !2969)
    #dbg_value(ptr @runtime.printLock, !1772, !DIExpression(), !2970)
    #dbg_value(ptr @runtime.printLock, !1772, !DIExpression(), !2972)
  call void @tinygo_futex_wake(ptr nonnull dereferenceable_or_null(4) @runtime.printLock) #14, !dbg !2973
  br label %switch.done, !dbg !2967

switch.done:                                      ; preds = %gep.next5.i.i43, %runtime.printint32.exit, %gep.next5.i.i33, %for.body.i29, %gep.next5.i.i20, %for.body.i16, %gep.next5.i.i, %for.body.i6
    #dbg_value(i32 %sig, !2835, !DIExpression(), !2974)
  call void @raise(i32 %sig) #14, !dbg !2975
  ret void, !dbg !2976

switch.body3:                                     ; preds = %for.body.i2
    #dbg_value(ptr @runtime.printLock, !1794, !DIExpression(), !2977)
    #dbg_value(ptr @runtime.printLock, !1794, !DIExpression(), !2980)
    #dbg_value(ptr @runtime.printLock, !1801, !DIExpression(), !2981)
    #dbg_value(i32 0, !1806, !DIExpression(), !2981)
    #dbg_value(i32 1, !1807, !DIExpression(), !2981)
    #dbg_value(ptr @runtime.printLock, !1801, !DIExpression(), !2983)
    #dbg_value(i32 0, !1806, !DIExpression(), !2984)
    #dbg_value(i32 1, !1807, !DIExpression(), !2985)
    #dbg_value(ptr @runtime.printLock, !1813, !DIExpression(), !2986)
    #dbg_value(i32 0, !1818, !DIExpression(), !2986)
    #dbg_value(i32 1, !1819, !DIExpression(), !2986)
  %33 = cmpxchg ptr @runtime.printLock, i32 0, i32 1 syncscope("singlethread") seq_cst seq_cst, align 4, !dbg !2986
  %34 = extractvalue { i32, i1 } %33, 1, !dbg !2986
  br i1 %34, label %for.body.i16, label %for.loop.preheader.i.i10, !dbg !2988

for.loop.preheader.i.i10:                         ; preds = %switch.body3
    #dbg_value(ptr @runtime.printLock, !1794, !DIExpression(), !2989)
    #dbg_value(ptr @runtime.printLock, !1745, !DIExpression(), !2990)
    #dbg_value(i32 2, !1752, !DIExpression(), !2990)
    #dbg_value(ptr @runtime.printLock, !1745, !DIExpression(), !2992)
    #dbg_value(i32 2, !1752, !DIExpression(), !2993)
    #dbg_value(ptr @runtime.printLock, !1757, !DIExpression(), !2994)
    #dbg_value(i32 2, !1764, !DIExpression(), !2994)
  %35 = atomicrmw xchg ptr @runtime.printLock, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !2994
  %.not4.i.i11 = icmp eq i32 %35, 0, !dbg !2996
  br i1 %.not4.i.i11, label %for.body.i16, label %"(*internal/futex.Futex).Wait.exit.i.i12", !dbg !2988

"(*internal/futex.Futex).Wait.exit.i.i12":        ; preds = %for.loop.preheader.i.i10, %"(*internal/futex.Futex).Wait.exit.i.i12"
    #dbg_value(ptr @runtime.printLock, !1794, !DIExpression(), !2997)
    #dbg_value(ptr @runtime.printLock, !1832, !DIExpression(), !2998)
    #dbg_value(i32 2, !1837, !DIExpression(), !3000)
  call void @tinygo_futex_wait(ptr nonnull dereferenceable_or_null(4) @runtime.printLock, i32 2) #14, !dbg !3001
    #dbg_value(ptr @runtime.printLock, !1745, !DIExpression(), !2992)
    #dbg_value(i32 2, !1752, !DIExpression(), !2993)
    #dbg_value(ptr @runtime.printLock, !1757, !DIExpression(), !2994)
    #dbg_value(i32 2, !1764, !DIExpression(), !2994)
  %36 = atomicrmw xchg ptr @runtime.printLock, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !2994
  %.not.i.i13 = icmp eq i32 %36, 0, !dbg !2996
  br i1 %.not.i.i13, label %for.body.i16, label %"(*internal/futex.Futex).Wait.exit.i.i12", !dbg !2988

for.body.i16:                                     ; preds = %for.loop.preheader.i.i10, %switch.body3, %"(*internal/futex.Futex).Wait.exit.i.i12"
    #dbg_value(ptr poison, !2128, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3002)
    #dbg_value(i64 6, !2128, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3002)
    #dbg_value(i64 0, !2129, !DIExpression(), !3003)
    #dbg_value(%runtime._string poison, !2128, !DIExpression(), !3004)
    #dbg_value(i64 0, !2129, !DIExpression(), !3005)
    #dbg_value(%runtime._string poison, !2128, !DIExpression(), !3006)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !3007
    #dbg_value(i8 83, !2136, !DIExpression(), !3007)
  store i8 83, ptr %stackalloc.i.i15, align 1, !dbg !3007
  %37 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i15, i64 1) #14, !dbg !3008
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !3009
    #dbg_value(i64 1, !2129, !DIExpression(), !3010)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !3007
    #dbg_value(i8 73, !2136, !DIExpression(), !3007)
  store i8 73, ptr %stackalloc.i.i15, align 1, !dbg !3007
  %38 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i15, i64 1) #14, !dbg !3008
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !3009
    #dbg_value(i64 2, !2129, !DIExpression(), !3010)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !3007
    #dbg_value(i8 71, !2136, !DIExpression(), !3007)
  store i8 71, ptr %stackalloc.i.i15, align 1, !dbg !3007
  %39 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i15, i64 1) #14, !dbg !3008
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !3009
    #dbg_value(i64 3, !2129, !DIExpression(), !3010)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !3007
    #dbg_value(i8 73, !2136, !DIExpression(), !3007)
  store i8 73, ptr %stackalloc.i.i15, align 1, !dbg !3007
  %40 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i15, i64 1) #14, !dbg !3008
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !3009
    #dbg_value(i64 4, !2129, !DIExpression(), !3010)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !3007
    #dbg_value(i8 76, !2136, !DIExpression(), !3007)
  store i8 76, ptr %stackalloc.i.i15, align 1, !dbg !3007
  %41 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i15, i64 1) #14, !dbg !3008
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !3009
    #dbg_value(i64 5, !2129, !DIExpression(), !3010)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !3007
    #dbg_value(i8 76, !2136, !DIExpression(), !3007)
  store i8 76, ptr %stackalloc.i.i15, align 1, !dbg !3007
  %42 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i15, i64 1) #14, !dbg !3008
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i15), !dbg !3009
    #dbg_value(i64 6, !2129, !DIExpression(), !3010)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i19), !dbg !3011
    #dbg_value(i8 10, !2136, !DIExpression(), !3011)
  store i8 10, ptr %stackalloc.i.i19, align 1, !dbg !3011
  %43 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i19, i64 1) #14, !dbg !3012
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i19), !dbg !3013
    #dbg_value(ptr @runtime.printLock, !1740, !DIExpression(), !3014)
    #dbg_value(ptr @runtime.printLock, !1745, !DIExpression(), !3017)
    #dbg_value(i32 0, !1752, !DIExpression(), !3019)
    #dbg_value(ptr @runtime.printLock, !1757, !DIExpression(), !3020)
    #dbg_value(i32 0, !1764, !DIExpression(), !3020)
  %44 = atomicrmw xchg ptr @runtime.printLock, i32 0 syncscope("singlethread") seq_cst, align 4, !dbg !3020
    #dbg_value(i32 %44, !1741, !DIExpression(), !3022)
  switch i32 %44, label %switch.done [
    i32 0, label %if.then.i.i21
    i32 2, label %gep.next5.i.i20
  ], !dbg !3023

if.then.i.i21:                                    ; preds = %for.body.i16
  call fastcc void @runtime._panic(), !dbg !3024
  unreachable, !dbg !3024

gep.next5.i.i20:                                  ; preds = %for.body.i16
    #dbg_value(ptr @runtime.printLock, !1740, !DIExpression(), !3025)
    #dbg_value(ptr @runtime.printLock, !1772, !DIExpression(), !3026)
    #dbg_value(ptr @runtime.printLock, !1772, !DIExpression(), !3028)
  call void @tinygo_futex_wake(ptr nonnull dereferenceable_or_null(4) @runtime.printLock) #14, !dbg !3029
  br label %switch.done, !dbg !3023

switch.body5:                                     ; preds = %for.body.i2
    #dbg_value(ptr @runtime.printLock, !1794, !DIExpression(), !3030)
    #dbg_value(ptr @runtime.printLock, !1794, !DIExpression(), !3033)
    #dbg_value(ptr @runtime.printLock, !1801, !DIExpression(), !3034)
    #dbg_value(i32 0, !1806, !DIExpression(), !3034)
    #dbg_value(i32 1, !1807, !DIExpression(), !3034)
    #dbg_value(ptr @runtime.printLock, !1801, !DIExpression(), !3036)
    #dbg_value(i32 0, !1806, !DIExpression(), !3037)
    #dbg_value(i32 1, !1807, !DIExpression(), !3038)
    #dbg_value(ptr @runtime.printLock, !1813, !DIExpression(), !3039)
    #dbg_value(i32 0, !1818, !DIExpression(), !3039)
    #dbg_value(i32 1, !1819, !DIExpression(), !3039)
  %45 = cmpxchg ptr @runtime.printLock, i32 0, i32 1 syncscope("singlethread") seq_cst seq_cst, align 4, !dbg !3039
  %46 = extractvalue { i32, i1 } %45, 1, !dbg !3039
  br i1 %46, label %for.body.i29, label %for.loop.preheader.i.i23, !dbg !3041

for.loop.preheader.i.i23:                         ; preds = %switch.body5
    #dbg_value(ptr @runtime.printLock, !1794, !DIExpression(), !3042)
    #dbg_value(ptr @runtime.printLock, !1745, !DIExpression(), !3043)
    #dbg_value(i32 2, !1752, !DIExpression(), !3043)
    #dbg_value(ptr @runtime.printLock, !1745, !DIExpression(), !3045)
    #dbg_value(i32 2, !1752, !DIExpression(), !3046)
    #dbg_value(ptr @runtime.printLock, !1757, !DIExpression(), !3047)
    #dbg_value(i32 2, !1764, !DIExpression(), !3047)
  %47 = atomicrmw xchg ptr @runtime.printLock, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !3047
  %.not4.i.i24 = icmp eq i32 %47, 0, !dbg !3049
  br i1 %.not4.i.i24, label %for.body.i29, label %"(*internal/futex.Futex).Wait.exit.i.i25", !dbg !3041

"(*internal/futex.Futex).Wait.exit.i.i25":        ; preds = %for.loop.preheader.i.i23, %"(*internal/futex.Futex).Wait.exit.i.i25"
    #dbg_value(ptr @runtime.printLock, !1794, !DIExpression(), !3050)
    #dbg_value(ptr @runtime.printLock, !1832, !DIExpression(), !3051)
    #dbg_value(i32 2, !1837, !DIExpression(), !3053)
  call void @tinygo_futex_wait(ptr nonnull dereferenceable_or_null(4) @runtime.printLock, i32 2) #14, !dbg !3054
    #dbg_value(ptr @runtime.printLock, !1745, !DIExpression(), !3045)
    #dbg_value(i32 2, !1752, !DIExpression(), !3046)
    #dbg_value(ptr @runtime.printLock, !1757, !DIExpression(), !3047)
    #dbg_value(i32 2, !1764, !DIExpression(), !3047)
  %48 = atomicrmw xchg ptr @runtime.printLock, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !3047
  %.not.i.i26 = icmp eq i32 %48, 0, !dbg !3049
  br i1 %.not.i.i26, label %for.body.i29, label %"(*internal/futex.Futex).Wait.exit.i.i25", !dbg !3041

for.body.i29:                                     ; preds = %for.loop.preheader.i.i23, %switch.body5, %"(*internal/futex.Futex).Wait.exit.i.i25"
    #dbg_value(ptr poison, !2128, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3055)
    #dbg_value(i64 7, !2128, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3055)
    #dbg_value(i64 0, !2129, !DIExpression(), !3056)
    #dbg_value(%runtime._string poison, !2128, !DIExpression(), !3057)
    #dbg_value(i64 0, !2129, !DIExpression(), !3058)
    #dbg_value(%runtime._string poison, !2128, !DIExpression(), !3059)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !3060
    #dbg_value(i8 83, !2136, !DIExpression(), !3060)
  store i8 83, ptr %stackalloc.i.i28, align 1, !dbg !3060
  %49 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i28, i64 1) #14, !dbg !3061
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !3062
    #dbg_value(i64 1, !2129, !DIExpression(), !3063)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !3060
    #dbg_value(i8 73, !2136, !DIExpression(), !3060)
  store i8 73, ptr %stackalloc.i.i28, align 1, !dbg !3060
  %50 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i28, i64 1) #14, !dbg !3061
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !3062
    #dbg_value(i64 2, !2129, !DIExpression(), !3063)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !3060
    #dbg_value(i8 71, !2136, !DIExpression(), !3060)
  store i8 71, ptr %stackalloc.i.i28, align 1, !dbg !3060
  %51 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i28, i64 1) #14, !dbg !3061
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !3062
    #dbg_value(i64 3, !2129, !DIExpression(), !3063)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !3060
    #dbg_value(i8 83, !2136, !DIExpression(), !3060)
  store i8 83, ptr %stackalloc.i.i28, align 1, !dbg !3060
  %52 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i28, i64 1) #14, !dbg !3061
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !3062
    #dbg_value(i64 4, !2129, !DIExpression(), !3063)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !3060
    #dbg_value(i8 69, !2136, !DIExpression(), !3060)
  store i8 69, ptr %stackalloc.i.i28, align 1, !dbg !3060
  %53 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i28, i64 1) #14, !dbg !3061
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !3062
    #dbg_value(i64 5, !2129, !DIExpression(), !3063)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !3060
    #dbg_value(i8 71, !2136, !DIExpression(), !3060)
  store i8 71, ptr %stackalloc.i.i28, align 1, !dbg !3060
  %54 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i28, i64 1) #14, !dbg !3061
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !3062
    #dbg_value(i64 6, !2129, !DIExpression(), !3063)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !3060
    #dbg_value(i8 86, !2136, !DIExpression(), !3060)
  store i8 86, ptr %stackalloc.i.i28, align 1, !dbg !3060
  %55 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i28, i64 1) #14, !dbg !3061
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i28), !dbg !3062
    #dbg_value(i64 7, !2129, !DIExpression(), !3063)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i32), !dbg !3064
    #dbg_value(i8 10, !2136, !DIExpression(), !3064)
  store i8 10, ptr %stackalloc.i.i32, align 1, !dbg !3064
  %56 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i32, i64 1) #14, !dbg !3065
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i32), !dbg !3066
    #dbg_value(ptr @runtime.printLock, !1740, !DIExpression(), !3067)
    #dbg_value(ptr @runtime.printLock, !1745, !DIExpression(), !3070)
    #dbg_value(i32 0, !1752, !DIExpression(), !3072)
    #dbg_value(ptr @runtime.printLock, !1757, !DIExpression(), !3073)
    #dbg_value(i32 0, !1764, !DIExpression(), !3073)
  %57 = atomicrmw xchg ptr @runtime.printLock, i32 0 syncscope("singlethread") seq_cst, align 4, !dbg !3073
    #dbg_value(i32 %57, !1741, !DIExpression(), !3075)
  switch i32 %57, label %switch.done [
    i32 0, label %if.then.i.i34
    i32 2, label %gep.next5.i.i33
  ], !dbg !3076

if.then.i.i34:                                    ; preds = %for.body.i29
  call fastcc void @runtime._panic(), !dbg !3077
  unreachable, !dbg !3077

gep.next5.i.i33:                                  ; preds = %for.body.i29
    #dbg_value(ptr @runtime.printLock, !1740, !DIExpression(), !3078)
    #dbg_value(ptr @runtime.printLock, !1772, !DIExpression(), !3079)
    #dbg_value(ptr @runtime.printLock, !1772, !DIExpression(), !3081)
  call void @tinygo_futex_wake(ptr nonnull dereferenceable_or_null(4) @runtime.printLock) #14, !dbg !3082
  br label %switch.done, !dbg !3076

switch.next6:                                     ; preds = %for.body.i2
    #dbg_value(i32 %sig, !2835, !DIExpression(), !3083)
    #dbg_value(ptr @runtime.printLock, !1794, !DIExpression(), !3084)
    #dbg_value(ptr @runtime.printLock, !1794, !DIExpression(), !3087)
    #dbg_value(ptr @runtime.printLock, !1801, !DIExpression(), !3088)
    #dbg_value(i32 0, !1806, !DIExpression(), !3088)
    #dbg_value(i32 1, !1807, !DIExpression(), !3088)
    #dbg_value(ptr @runtime.printLock, !1801, !DIExpression(), !3090)
    #dbg_value(i32 0, !1806, !DIExpression(), !3091)
    #dbg_value(i32 1, !1807, !DIExpression(), !3092)
    #dbg_value(ptr @runtime.printLock, !1813, !DIExpression(), !3093)
    #dbg_value(i32 0, !1818, !DIExpression(), !3093)
    #dbg_value(i32 1, !1819, !DIExpression(), !3093)
  %58 = cmpxchg ptr @runtime.printLock, i32 0, i32 1 syncscope("singlethread") seq_cst seq_cst, align 4, !dbg !3093
  %59 = extractvalue { i32, i1 } %58, 1, !dbg !3093
  br i1 %59, label %runtime.printlock.exit40, label %for.loop.preheader.i.i36, !dbg !3095

for.loop.preheader.i.i36:                         ; preds = %switch.next6
    #dbg_value(ptr @runtime.printLock, !1794, !DIExpression(), !3096)
    #dbg_value(ptr @runtime.printLock, !1745, !DIExpression(), !3097)
    #dbg_value(i32 2, !1752, !DIExpression(), !3097)
    #dbg_value(ptr @runtime.printLock, !1745, !DIExpression(), !3099)
    #dbg_value(i32 2, !1752, !DIExpression(), !3100)
    #dbg_value(ptr @runtime.printLock, !1757, !DIExpression(), !3101)
    #dbg_value(i32 2, !1764, !DIExpression(), !3101)
  %60 = atomicrmw xchg ptr @runtime.printLock, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !3101
  %.not4.i.i37 = icmp eq i32 %60, 0, !dbg !3103
  br i1 %.not4.i.i37, label %runtime.printlock.exit40, label %"(*internal/futex.Futex).Wait.exit.i.i38", !dbg !3095

"(*internal/futex.Futex).Wait.exit.i.i38":        ; preds = %for.loop.preheader.i.i36, %"(*internal/futex.Futex).Wait.exit.i.i38"
    #dbg_value(ptr @runtime.printLock, !1794, !DIExpression(), !3104)
    #dbg_value(ptr @runtime.printLock, !1832, !DIExpression(), !3105)
    #dbg_value(i32 2, !1837, !DIExpression(), !3107)
  call void @tinygo_futex_wait(ptr nonnull dereferenceable_or_null(4) @runtime.printLock, i32 2) #14, !dbg !3108
    #dbg_value(ptr @runtime.printLock, !1745, !DIExpression(), !3099)
    #dbg_value(i32 2, !1752, !DIExpression(), !3100)
    #dbg_value(ptr @runtime.printLock, !1757, !DIExpression(), !3101)
    #dbg_value(i32 2, !1764, !DIExpression(), !3101)
  %61 = atomicrmw xchg ptr @runtime.printLock, i32 2 syncscope("singlethread") seq_cst, align 4, !dbg !3101
  %.not.i.i39 = icmp eq i32 %61, 0, !dbg !3103
  br i1 %.not.i.i39, label %runtime.printlock.exit40, label %"(*internal/futex.Futex).Wait.exit.i.i38", !dbg !3095

runtime.printlock.exit40:                         ; preds = %"(*internal/futex.Futex).Wait.exit.i.i38", %switch.next6, %for.loop.preheader.i.i36
    #dbg_value(i32 %sig, !2863, !DIExpression(), !3109)
    #dbg_value(i32 %sig, !2863, !DIExpression(), !3110)
  %62 = icmp slt i32 %sig, 0, !dbg !3111
  br i1 %62, label %if.then.i, label %if.done.i, !dbg !3112

if.then.i:                                        ; preds = %runtime.printlock.exit40
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i41), !dbg !3113
    #dbg_value(i8 45, !2136, !DIExpression(), !3114)
    #dbg_value(i8 45, !2136, !DIExpression(), !3113)
  store i8 45, ptr %stackalloc.i.i41, align 1, !dbg !3113
    #dbg_value(i8 45, !2136, !DIExpression(), !3113)
  %63 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i41, i64 1) #14, !dbg !3115
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i41), !dbg !3116
    #dbg_value(i32 %sig, !2863, !DIExpression(), !3117)
  %64 = sub i32 0, %sig, !dbg !3118
    #dbg_value(i32 %64, !2863, !DIExpression(), !3119)
  br label %if.done.i, !dbg !3112

if.done.i:                                        ; preds = %if.then.i, %runtime.printlock.exit40
  %65 = phi i32 [ %sig, %runtime.printlock.exit40 ], [ %64, %if.then.i ], !dbg !3120
    #dbg_value(i32 %65, !2863, !DIExpression(), !3121)
    #dbg_value(i32 %65, !2859, !DIExpression(), !3122)
    #dbg_value(i32 %65, !2859, !DIExpression(), !3123)
  %66 = zext i32 %65 to i64, !dbg !3124
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %digits.i.i.i), !dbg !2866
    #dbg_value(i64 19, !2850, !DIExpression(), !3125)
    #dbg_value(i64 19, !2851, !DIExpression(), !3126)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %digits.i.i.i, i8 0, i64 20, i1 false), !dbg !2866
  br label %for.body.i.i.i, !dbg !3127

for.loop1.preheader.i.i.i:                        ; preds = %for.body.i.i.i
    #dbg_value(i64 %spec.select.i.i.i, !2853, !DIExpression(), !3128)
  %67 = icmp slt i64 %spec.select.i.i.i, 20, !dbg !3129
  br i1 %67, label %for.body2.i.i.i, label %runtime.printint32.exit, !dbg !3127

for.body.i.i.i:                                   ; preds = %for.body.i.i.i, %if.done.i
  %68 = phi i64 [ 19, %if.done.i ], [ %76, %for.body.i.i.i ]
  %69 = phi i64 [ 19, %if.done.i ], [ %spec.select.i.i.i, %for.body.i.i.i ]
  %70 = phi i64 [ %66, %if.done.i ], [ %75, %for.body.i.i.i ]
    #dbg_value(i64 %68, !2851, !DIExpression(), !3130)
    #dbg_value(i64 %70, !2849, !DIExpression(), !3131)
  %71 = urem i64 %70, 10, !dbg !3132
  %72 = trunc nuw nsw i64 %71 to i8, !dbg !3133
  %73 = or disjoint i8 %72, 48, !dbg !3133
    #dbg_value(i8 %73, !2852, !DIExpression(), !3134)
  %74 = getelementptr inbounds nuw [20 x i8], ptr %digits.i.i.i, i64 0, i64 %68, !dbg !3135
  store i8 %73, ptr %74, align 1, !dbg !3135
  %.not.i.i.i = icmp eq i64 %71, 0, !dbg !3136
  %spec.select.i.i.i = select i1 %.not.i.i.i, i64 %69, i64 %68, !dbg !3127
  %75 = udiv i64 %70, 10, !dbg !3137
    #dbg_value(i64 %75, !2849, !DIExpression(), !3137)
  %76 = add nsw i64 %68, -1, !dbg !3138
    #dbg_value(i64 %76, !2851, !DIExpression(), !3130)
  %.not23.i.i.i = icmp eq i64 %68, 0, !dbg !3139
  br i1 %.not23.i.i.i, label %for.loop1.preheader.i.i.i, label %for.body.i.i.i, !dbg !3127

for.body2.i.i.i:                                  ; preds = %for.loop1.preheader.i.i.i, %for.body2.i.i.i
  %77 = phi i64 [ %81, %for.body2.i.i.i ], [ %spec.select.i.i.i, %for.loop1.preheader.i.i.i ]
    #dbg_value(i64 %77, !2853, !DIExpression(), !3140)
  %78 = getelementptr inbounds nuw [20 x i8], ptr %digits.i.i.i, i64 0, i64 %77, !dbg !3141
  %79 = load i8, ptr %78, align 1, !dbg !3141
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i.i.i), !dbg !3142
    #dbg_value(i8 %79, !2136, !DIExpression(), !3142)
  store i8 %79, ptr %stackalloc.i.i.i.i, align 1, !dbg !3142
  %80 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i.i.i, i64 1) #14, !dbg !3143
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i.i.i), !dbg !3144
  %81 = add i64 %77, 1, !dbg !3145
    #dbg_value(i64 %81, !2853, !DIExpression(), !3128)
  %exitcond.not.i.i.i = icmp eq i64 %81, 20, !dbg !3129
  br i1 %exitcond.not.i.i.i, label %runtime.printint32.exit, label %for.body2.i.i.i, !dbg !3127

runtime.printint32.exit:                          ; preds = %for.body2.i.i.i, %for.loop1.preheader.i.i.i
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %digits.i.i.i), !dbg !3146
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i42), !dbg !3147
    #dbg_value(i8 10, !2136, !DIExpression(), !3148)
    #dbg_value(i8 10, !2136, !DIExpression(), !3147)
  store i8 10, ptr %stackalloc.i.i42, align 1, !dbg !3147
    #dbg_value(i8 10, !2136, !DIExpression(), !3147)
  %82 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i42, i64 1) #14, !dbg !3149
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i42), !dbg !3150
    #dbg_value(ptr @runtime.printLock, !1740, !DIExpression(), !3151)
    #dbg_value(ptr @runtime.printLock, !1740, !DIExpression(), !3154)
    #dbg_value(ptr @runtime.printLock, !1745, !DIExpression(), !3155)
    #dbg_value(i32 0, !1752, !DIExpression(), !3155)
    #dbg_value(ptr @runtime.printLock, !1745, !DIExpression(), !3157)
    #dbg_value(i32 0, !1752, !DIExpression(), !3158)
    #dbg_value(ptr @runtime.printLock, !1757, !DIExpression(), !3159)
    #dbg_value(i32 0, !1764, !DIExpression(), !3159)
  %83 = atomicrmw xchg ptr @runtime.printLock, i32 0 syncscope("singlethread") seq_cst, align 4, !dbg !3159
    #dbg_value(i32 %83, !1741, !DIExpression(), !3161)
    #dbg_value(i32 %83, !1741, !DIExpression(), !3162)
  switch i32 %83, label %switch.done [
    i32 0, label %if.then.i.i44
    i32 2, label %gep.next5.i.i43
  ], !dbg !3163

if.then.i.i44:                                    ; preds = %runtime.printint32.exit
  call fastcc void @runtime._panic(), !dbg !3164
  unreachable, !dbg !3164

gep.next5.i.i43:                                  ; preds = %runtime.printint32.exit
    #dbg_value(ptr @runtime.printLock, !1740, !DIExpression(), !3165)
    #dbg_value(ptr @runtime.printLock, !1772, !DIExpression(), !3166)
    #dbg_value(ptr @runtime.printLock, !1772, !DIExpression(), !3168)
  call void @tinygo_futex_wake(ptr nonnull dereferenceable_or_null(4) @runtime.printLock) #14, !dbg !3169
  br label %switch.done, !dbg !3163

for.body.i47:                                     ; preds = %entry, %for.body.i47
  %84 = phi i64 [ %88, %for.body.i47 ], [ 0, %entry ]
    #dbg_value(i64 %84, !2129, !DIExpression(), !3170)
    #dbg_value(%runtime._string poison, !2128, !DIExpression(), !3171)
  %85 = getelementptr inbounds nuw i8, ptr @"runtime$string.55", i64 %84, !dbg !3172
  %86 = load i8, ptr %85, align 1, !dbg !3172
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %stackalloc.i.i46), !dbg !3173
    #dbg_value(i8 %86, !2136, !DIExpression(), !3173)
  store i8 %86, ptr %stackalloc.i.i46, align 1, !dbg !3173
  %87 = call i64 @write(i32 1, ptr nonnull %stackalloc.i.i46, i64 1) #14, !dbg !3174
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %stackalloc.i.i46), !dbg !3175
  %88 = add nuw nsw i64 %84, 1, !dbg !3176
    #dbg_value(i64 %88, !2129, !DIExpression(), !3177)
  %exitcond.not.i48 = icmp eq i64 %88, 20, !dbg !3178
  br i1 %exitcond.not.i48, label %for.body.i2, label %for.body.i47, !dbg !3179
}

declare void @raise(i32) local_unnamed_addr #0

; Function Attrs: nounwind uwtable(sync)
define void @tinygo_signal_handler(i32 %s) local_unnamed_addr #1 !dbg !3180 {
entry:
    #dbg_value(i32 %s, !3182, !DIExpression(), !3186)
  %shift.overflow = icmp ugt i32 %s, 31
  %0 = shl nuw i32 1, %s
  %shift.result = select i1 %shift.overflow, i32 0, i32 %0
  br label %for.body, !dbg !3187

for.body:                                         ; preds = %for.body, %entry
    #dbg_value(i32 %s, !3182, !DIExpression(), !3188)
    #dbg_value(i32 %shift.result, !3183, !DIExpression(), !3189)
    #dbg_value(ptr @runtime.receivedSignals, !1939, !DIExpression(), !3190)
    #dbg_value(ptr @runtime.receivedSignals, !1939, !DIExpression(), !3192)
    #dbg_value(ptr @runtime.receivedSignals, !1947, !DIExpression(), !3193)
  %1 = load atomic i32, ptr @runtime.receivedSignals seq_cst, align 4, !dbg !3193
    #dbg_value(i32 %1, !3184, !DIExpression(), !3195)
    #dbg_value(i32 %1, !3184, !DIExpression(), !3196)
    #dbg_value(i32 %1, !3184, !DIExpression(), !3197)
    #dbg_value(i32 %shift.result, !3183, !DIExpression(), !3198)
  %2 = or i32 %1, %shift.result, !dbg !3199
    #dbg_value(ptr @runtime.receivedSignals, !1801, !DIExpression(), !3200)
    #dbg_value(i32 %1, !1806, !DIExpression(), !3200)
    #dbg_value(i32 %2, !1807, !DIExpression(), !3200)
    #dbg_value(ptr @runtime.receivedSignals, !1801, !DIExpression(), !3202)
    #dbg_value(i32 %1, !1806, !DIExpression(), !3203)
    #dbg_value(i32 %2, !1807, !DIExpression(), !3204)
    #dbg_value(ptr @runtime.receivedSignals, !1813, !DIExpression(), !3205)
    #dbg_value(i32 %1, !1818, !DIExpression(), !3205)
    #dbg_value(i32 %2, !1819, !DIExpression(), !3205)
  %3 = cmpxchg ptr @runtime.receivedSignals, i32 %1, i32 %2 syncscope("singlethread") seq_cst seq_cst, align 4, !dbg !3205
  %4 = extractvalue { i32, i1 } %3, 1, !dbg !3205
    #dbg_value(i1 %4, !3185, !DIExpression(), !3207)
    #dbg_value(i1 %4, !3185, !DIExpression(), !3208)
  br i1 %4, label %if.then, label %for.body, !dbg !3187

if.then:                                          ; preds = %for.body
    #dbg_value(ptr @runtime.signalFutex, !1745, !DIExpression(), !3209)
    #dbg_value(i32 1, !1752, !DIExpression(), !3209)
    #dbg_value(ptr @runtime.signalFutex, !1745, !DIExpression(), !3211)
    #dbg_value(i32 1, !1752, !DIExpression(), !3212)
    #dbg_value(ptr @runtime.signalFutex, !1757, !DIExpression(), !3213)
    #dbg_value(i32 1, !1764, !DIExpression(), !3213)
  %5 = atomicrmw xchg ptr @runtime.signalFutex, i32 1 syncscope("singlethread") seq_cst, align 4, !dbg !3213
  %6 = icmp eq i32 %5, 0, !dbg !3215
  br i1 %6, label %if.then1, label %if.done, !dbg !3187

if.then1:                                         ; preds = %if.then
    #dbg_value(ptr @runtime.signalFutex, !1932, !DIExpression(), !3216)
    #dbg_value(ptr @runtime.signalFutex, !1932, !DIExpression(), !3218)
  call void @tinygo_futex_wake_all(ptr nonnull @runtime.signalFutex) #14, !dbg !3219
  br label %if.done, !dbg !3187

if.done:                                          ; preds = %if.then1, %if.then
  ret void, !dbg !3220
}

; Function Attrs: nounwind uwtable(sync)
define noundef i1 @f_gold(ptr nocapture readonly %s.data, i64 %s.len, i64 %s.cap) local_unnamed_addr #1 !dbg !3221 {
entry:
  %j = alloca i64, align 8, !dbg !3235
    #dbg_value(ptr %s.data, !3230, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3235)
    #dbg_value(i64 %s.len, !3230, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3235)
    #dbg_value(i64 %s.cap, !3230, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3235)
    #dbg_value({ ptr, i64, i64 } poison, !3230, !DIExpression(), !3236)
    #dbg_value(i64 %s.len, !3231, !DIExpression(), !3237)
    #dbg_value(i64 0, !3232, !DIExpression(), !3238)
    #dbg_value(i64 0, !3232, !DIExpression(), !3239)
    #dbg_value(i64 %s.len, !3231, !DIExpression(), !3240)
  %0 = add i64 %s.len, -1, !dbg !3241
    #dbg_value(i64 0, !3233, !DIExpression(), !3242)
  store i64 %0, ptr %j, align 8, !dbg !3243
    #dbg_value(i64 %0, !3234, !DIExpression(), !3243)
    #dbg_value(i64 poison, !3233, !DIExpression(), !3244)
    #dbg_value(i64 0, !3233, !DIExpression(), !3244)
  %.not26 = icmp slt i64 %0, 0, !dbg !3245
  br i1 %.not26, label %common.ret, label %deref.next4, !dbg !3246

deref.next4:                                      ; preds = %entry, %deref.next12
  %1 = phi i64 [ %9, %deref.next12 ], [ %0, %entry ]
  %2 = phi ptr [ %j16, %deref.next12 ], [ %j, %entry ]
  %.sroa.speculated27 = phi i64 [ %8, %deref.next12 ], [ 0, %entry ]
    #dbg_value(i64 %.sroa.speculated27, !3233, !DIExpression(), !3244)
    #dbg_value({ ptr, i64, i64 } poison, !3230, !DIExpression(), !3247)
    #dbg_value(i64 %.sroa.speculated27, !3233, !DIExpression(), !3248)
  %exitcond.not = icmp eq i64 %.sroa.speculated27, %s.len, !dbg !3249
  br i1 %exitcond.not, label %lookup.throw, label %lookup.next, !dbg !3249

lookup.next:                                      ; preds = %deref.next4
    #dbg_value({ ptr, i64, i64 } poison, !3230, !DIExpression(), !3250)
    #dbg_value(i64 %1, !3234, !DIExpression(), !3251)
  %.not5 = icmp ult i64 %1, %s.len, !dbg !3252
  br i1 %.not5, label %lookup.next10, label %lookup.throw9, !dbg !3252

lookup.next10:                                    ; preds = %lookup.next
  %3 = getelementptr inbounds i8, ptr %s.data, i64 %.sroa.speculated27, !dbg !3249
  %4 = load i8, ptr %3, align 1, !dbg !3249
  %5 = getelementptr inbounds i8, ptr %s.data, i64 %1, !dbg !3252
  %6 = load i8, ptr %5, align 1, !dbg !3252
  %.not6 = icmp eq i8 %4, %6, !dbg !3253
  br i1 %.not6, label %deref.next12, label %common.ret, !dbg !3246

common.ret:                                       ; preds = %lookup.next10, %deref.next12, %entry
  %.not.lcssa = phi i1 [ true, %entry ], [ true, %deref.next12 ], [ false, %lookup.next10 ], !dbg !3245
  ret i1 %.not.lcssa, !dbg !3246

deref.next12:                                     ; preds = %lookup.next10
  %7 = load i64, ptr %2, align 8, !dbg !3246
  %j16 = call fastcc align 8 dereferenceable(8) ptr @runtime.alloc(), !dbg !3243
  %8 = add i64 %.sroa.speculated27, 1, !dbg !3254
    #dbg_value(i64 %8, !3257, !DIExpression(), !3254)
    #dbg_value(i64 %7, !3259, !DIExpression(), !3264)
    #dbg_value(ptr %j16, !3262, !DIExpression(), !3266)
  %9 = add i64 %7, -1, !dbg !3267
  store i64 %9, ptr %j16, align 8, !dbg !3267
    #dbg_value(i64 %8, !3233, !DIExpression(), !3244)
    #dbg_value(i64 %9, !3234, !DIExpression(), !3268)
  %.not = icmp sgt i64 %8, %9, !dbg !3245
  br i1 %.not, label %common.ret, label %deref.next4, !dbg !3246

lookup.throw:                                     ; preds = %deref.next4
  call fastcc void @runtime.lookupPanic(), !dbg !3249
  unreachable, !dbg !3249

lookup.throw9:                                    ; preds = %lookup.next
  call fastcc void @runtime.lookupPanic(), !dbg !3252
  unreachable, !dbg !3252
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #13

attributes #0 = { "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #1 = { nounwind uwtable(sync) "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #2 = { noinline nounwind allockind("alloc,zeroed") uwtable(sync) "alloc-family"="runtime.alloc" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #3 = { cold nofree noreturn nounwind uwtable(sync) "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { nofree nounwind uwtable(sync) "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #6 = { cold nofree noreturn "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #7 = { nofree "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #10 = { noreturn nounwind uwtable(sync) "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable(sync) "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #12 = { noinline nounwind uwtable(sync) "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { nounwind }

!llvm.dbg.cu = !{!146, !148, !189, !190, !191, !213, !490, !509, !706, !722, !1451, !1462, !1495, !1496, !1731}
!llvm.ident = !{!1732, !1732, !1732, !1732, !1732, !1732, !1732, !1732, !1732, !1732, !1732, !1732, !1732, !1732, !1732}
!llvm.module.flags = !{!1733, !1734}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "internal/task.activeTasks", linkageName: "internal/task.activeTasks", scope: !2, file: !2, line: 45, type: !3, isLocal: false, isDefinition: true, align: 64)
!2 = !DIFile(filename: "task_threads.go", directory: "/usr/local/lib/tinygo/src/internal/task")
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, align: 64, dwarfAddressSpace: 0)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.Task", baseType: !5)
!5 = !DICompositeType(tag: DW_TAG_structure_type, size: 704, align: 64, elements: !6)
!6 = !{!7, !8, !10, !12, !16, !44, !46, !48, !49}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "Next", baseType: !3, size: 64, align: 64)
!8 = !DIDerivedType(tag: DW_TAG_member, name: "Ptr", baseType: !9, size: 64, align: 64, offset: 64)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "unsafe.Pointer", baseType: null, size: 64, align: 64, dwarfAddressSpace: 0)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "Data", baseType: !11, size: 64, align: 64, offset: 128)
!11 = !DIBasicType(name: "uint64", size: 64, encoding: DW_ATE_unsigned)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "gcData", baseType: !13, align: 8, offset: 192)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.gcData", baseType: !14)
!14 = !DICompositeType(tag: DW_TAG_structure_type, align: 8, elements: !15)
!15 = !{}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "state", baseType: !17, size: 384, align: 64, offset: 192)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.state", baseType: !18)
!18 = !DICompositeType(tag: DW_TAG_structure_type, size: 384, align: 64, elements: !19)
!19 = !{!20, !22, !24, !25, !26, !27}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "id", baseType: !21, size: 64, align: 64)
!21 = !DIBasicType(name: "uintptr", size: 64, encoding: DW_ATE_unsigned)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "thread", baseType: !23, size: 64, align: 64, offset: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.threadID", baseType: !9)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "stackTop", baseType: !21, size: 64, align: 64, offset: 128)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "stackBottom", baseType: !21, size: 64, align: 64, offset: 192)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "QueueNext", baseType: !3, size: 64, align: 64, offset: 256)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "pauseSem", baseType: !28, size: 32, align: 32, offset: 320)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.Semaphore", baseType: !29)
!29 = !DICompositeType(tag: DW_TAG_structure_type, size: 32, align: 32, elements: !30)
!30 = !{!31}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "futex", baseType: !32, size: 32, align: 32)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.Futex", baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/futex.Futex", baseType: !34)
!34 = !DICompositeType(tag: DW_TAG_structure_type, size: 32, align: 32, elements: !35)
!35 = !{!36}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "Uint32", baseType: !37, size: 32, align: 32)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "sync/atomic.Uint32", baseType: !38)
!38 = !DICompositeType(tag: DW_TAG_structure_type, size: 32, align: 32, elements: !39)
!39 = !{!40, !42}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !41, align: 8)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "sync/atomic.noCopy", baseType: !14)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "v", baseType: !43, size: 32, align: 32)
!43 = !DIBasicType(name: "uint32", size: 32, encoding: DW_ATE_unsigned)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "FipsIndicator", baseType: !45, size: 8, align: 8, offset: 576)
!45 = !DIBasicType(name: "uint8", size: 8, encoding: DW_ATE_unsigned)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "FipsOnlyBypass", baseType: !47, size: 8, align: 8, offset: 584)
!47 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "RunState", baseType: !45, size: 8, align: 8, offset: 592)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "DeferFrame", baseType: !9, size: 64, align: 64, offset: 640)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(name: "internal/task.mainTask", linkageName: "internal/task.mainTask", scope: !2, file: !2, line: 42, type: !4, isLocal: false, isDefinition: true, align: 64)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !54, line: 1, type: !55, isLocal: true, isDefinition: true)
!54 = !DIFile(filename: "mutex-preemptive.go", directory: "/usr/local/lib/tinygo/src/internal/task")
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 240, align: 8, elements: !56)
!56 = !{!57}
!57 = !DISubrange(count: 30, lowerBound: 0)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(name: "internal/task.numCPU", linkageName: "internal/task.numCPU", scope: !2, file: !2, line: 40, type: !60, isLocal: false, isDefinition: true, align: 32)
!60 = !DIBasicType(name: "int32", size: 32, encoding: DW_ATE_signed)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(name: "internal/task.activeTaskLock", linkageName: "internal/task.activeTaskLock", scope: !2, file: !2, line: 46, type: !63, isLocal: false, isDefinition: true, align: 32)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.PMutex", baseType: !64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.Mutex", baseType: !29)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(scope: null, file: !2, line: 64, type: !67, isLocal: true, isDefinition: true)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 160, align: 8, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 20, lowerBound: 0)
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression())
!71 = distinct !DIGlobalVariable(name: "internal/task.otherGoroutines", linkageName: "internal/task.otherGoroutines", scope: !2, file: !2, line: 99, type: !43, isLocal: false, isDefinition: true, align: 32)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(scope: null, file: !2, line: 146, type: !74, isLocal: true, isDefinition: true)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 136, align: 8, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 17, lowerBound: 0)
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(name: "internal/task.scanWaitGroup", linkageName: "internal/task.scanWaitGroup", scope: !2, file: !2, line: 151, type: !79, isLocal: false, isDefinition: true, align: 32)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.waitGroup", baseType: !80)
!80 = !DICompositeType(tag: DW_TAG_structure_type, size: 32, align: 32, elements: !81)
!81 = !{!82}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "f", baseType: !32, size: 32, align: 32)
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(name: "internal/task.gcState", linkageName: "internal/task.gcState", scope: !2, file: !2, line: 180, type: !32, isLocal: false, isDefinition: true, align: 32)
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(name: "type string", scope: !87, file: !87, line: 1, type: !88, isLocal: false, isDefinition: true, align: 64)
!87 = !DIFile(filename: "<Go type>", directory: "")
!88 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !89)
!89 = !{!90, !92}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "kind", baseType: !91, size: 8, align: 8)
!91 = !DIBasicType(name: "int8", size: 8, encoding: DW_ATE_signed)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "ptrTo", baseType: !9, size: 64, align: 64, offset: 64)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(name: "type *string", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!95 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !96)
!96 = !{!90, !97, !99}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "numMethods", baseType: !98, size: 16, align: 16, offset: 16)
!98 = !DIBasicType(name: "uint16", size: 16, encoding: DW_ATE_unsigned)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "elementType", baseType: !9, size: 64, align: 64, offset: 64)
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(name: "runtime.gcLock", linkageName: "runtime.gcLock", scope: !102, file: !102, line: 32, type: !63, isLocal: false, isDefinition: true, align: 32)
!102 = !DIFile(filename: "gc_boehm.go", directory: "/usr/local/lib/tinygo/src/runtime")
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression())
!104 = distinct !DIGlobalVariable(scope: null, file: !105, line: 78, type: !106, isLocal: true, isDefinition: true)
!105 = !DIFile(filename: "panic.go", directory: "/usr/local/lib/tinygo/src/runtime")
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 56, align: 8, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 7, lowerBound: 0)
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(scope: null, file: !105, line: 99, type: !111, isLocal: true, isDefinition: true)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 192, align: 8, elements: !112)
!112 = !{!113}
!113 = !DISubrange(count: 24, lowerBound: 0)
!114 = !DIGlobalVariableExpression(var: !115, expr: !DIExpression())
!115 = distinct !DIGlobalVariable(scope: null, file: !105, line: 101, type: !116, isLocal: true, isDefinition: true)
!116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 16, align: 8, elements: !117)
!117 = !{!118}
!118 = !DISubrange(count: 2, lowerBound: 0)
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(scope: null, file: !105, line: 184, type: !121, isLocal: true, isDefinition: true)
!121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 184, align: 8, elements: !122)
!122 = !{!123}
!123 = !DISubrange(count: 23, lowerBound: 0)
!124 = !DIGlobalVariableExpression(var: !125, expr: !DIExpression())
!125 = distinct !DIGlobalVariable(scope: null, file: !105, line: 194, type: !126, isLocal: true, isDefinition: true)
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 144, align: 8, elements: !127)
!127 = !{!128}
!128 = !DISubrange(count: 18, lowerBound: 0)
!129 = !DIGlobalVariableExpression(var: !130, expr: !DIExpression())
!130 = distinct !DIGlobalVariable(name: "runtime.stackTop", linkageName: "runtime.stackTop", scope: !131, file: !131, line: 75, type: !21, isLocal: false, isDefinition: true, align: 64)
!131 = !DIFile(filename: "runtime_unix.go", directory: "/usr/local/lib/tinygo/src/runtime")
!132 = !DIGlobalVariableExpression(var: !133, expr: !DIExpression())
!133 = distinct !DIGlobalVariable(name: "runtime.main_argv", linkageName: "runtime.main_argv", scope: !131, file: !131, line: 106, type: !134, isLocal: false, isDefinition: true, align: 64)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64, align: 64, dwarfAddressSpace: 0)
!135 = !DIGlobalVariableExpression(var: !136, expr: !DIExpression())
!136 = distinct !DIGlobalVariable(scope: null, file: !131, line: 155, type: !111, isLocal: true, isDefinition: true)
!137 = !DIGlobalVariableExpression(var: !138, expr: !DIExpression())
!138 = distinct !DIGlobalVariable(scope: null, file: !131, line: 158, type: !67, isLocal: true, isDefinition: true)
!139 = !DIGlobalVariableExpression(var: !140, expr: !DIExpression())
!140 = distinct !DIGlobalVariable(name: "runtime.signalFutex", linkageName: "runtime.signalFutex", scope: !131, file: !131, line: 354, type: !33, isLocal: false, isDefinition: true, align: 32)
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(name: "runtime.receivedSignals", linkageName: "runtime.receivedSignals", scope: !131, file: !131, line: 358, type: !37, isLocal: false, isDefinition: true, align: 32)
!143 = !DIGlobalVariableExpression(var: !144, expr: !DIExpression())
!144 = distinct !DIGlobalVariable(name: "runtime.printLock", linkageName: "runtime.printLock", scope: !145, file: !145, line: 136, type: !64, isLocal: false, isDefinition: true, align: 32)
!145 = !DIFile(filename: "scheduler_threads.go", directory: "/usr/local/lib/tinygo/src/runtime")
!146 = distinct !DICompileUnit(language: DW_LANG_C99, file: !147, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!147 = !DIFile(filename: "<unknown>", directory: "")
!148 = distinct !DICompileUnit(language: DW_LANG_C99, file: !147, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !149)
!149 = !{!150, !93, !85, !156, !161, !164, !169, !174, !179, !184}
!150 = !DIGlobalVariableExpression(var: !151, expr: !DIExpression())
!151 = distinct !DIGlobalVariable(scope: null, file: !152, line: 1, type: !153, isLocal: true, isDefinition: true)
!152 = !DIFile(filename: "value.go", directory: "/usr/local/go/src/sync/atomic")
!153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 424, align: 8, elements: !154)
!154 = !{!155}
!155 = !DISubrange(count: 53, lowerBound: 0)
!156 = !DIGlobalVariableExpression(var: !157, expr: !DIExpression())
!157 = distinct !DIGlobalVariable(scope: null, file: !152, line: 1, type: !158, isLocal: true, isDefinition: true)
!158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 480, align: 8, elements: !159)
!159 = !{!160}
!160 = !DISubrange(count: 60, lowerBound: 0)
!161 = !DIGlobalVariableExpression(var: !162, expr: !DIExpression())
!162 = distinct !DIGlobalVariable(name: "sync/atomic.firstStoreInProgress", linkageName: "sync/atomic.firstStoreInProgress", scope: !152, file: !152, line: 42, type: !163, isLocal: false, isDefinition: true, align: 8)
!163 = !DIBasicType(name: "byte", size: 8, encoding: DW_ATE_unsigned)
!164 = !DIGlobalVariableExpression(var: !165, expr: !DIExpression())
!165 = distinct !DIGlobalVariable(scope: null, file: !152, line: 1, type: !166, isLocal: true, isDefinition: true)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 560, align: 8, elements: !167)
!167 = !{!168}
!168 = !DISubrange(count: 70, lowerBound: 0)
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(scope: null, file: !152, line: 1, type: !171, isLocal: true, isDefinition: true)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 336, align: 8, elements: !172)
!172 = !{!173}
!173 = !DISubrange(count: 42, lowerBound: 0)
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(scope: null, file: !152, line: 1, type: !176, isLocal: true, isDefinition: true)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 472, align: 8, elements: !177)
!177 = !{!178}
!178 = !DISubrange(count: 59, lowerBound: 0)
!179 = !DIGlobalVariableExpression(var: !180, expr: !DIExpression())
!180 = distinct !DIGlobalVariable(scope: null, file: !152, line: 1, type: !181, isLocal: true, isDefinition: true)
!181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 328, align: 8, elements: !182)
!182 = !{!183}
!183 = !DISubrange(count: 41, lowerBound: 0)
!184 = !DIGlobalVariableExpression(var: !185, expr: !DIExpression())
!185 = distinct !DIGlobalVariable(scope: null, file: !152, line: 1, type: !186, isLocal: true, isDefinition: true)
!186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 464, align: 8, elements: !187)
!187 = !{!188}
!188 = !DISubrange(count: 58, lowerBound: 0)
!189 = distinct !DICompileUnit(language: DW_LANG_C99, file: !147, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!190 = distinct !DICompileUnit(language: DW_LANG_C99, file: !147, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!191 = distinct !DICompileUnit(language: DW_LANG_C99, file: !147, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !192)
!192 = !{!193, !199, !201, !206, !211}
!193 = !DIGlobalVariableExpression(var: !194, expr: !DIExpression())
!194 = distinct !DIGlobalVariable(scope: null, file: !195, line: 12, type: !196, isLocal: true, isDefinition: true)
!195 = !DIFile(filename: "itoa.go", directory: "/usr/local/lib/tinygo/src/internal/itoa")
!196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 8, align: 8, elements: !197)
!197 = !{!198}
!198 = !DISubrange(count: 1, lowerBound: 0)
!199 = !DIGlobalVariableExpression(var: !200, expr: !DIExpression())
!200 = distinct !DIGlobalVariable(scope: null, file: !195, line: 20, type: !196, isLocal: true, isDefinition: true)
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(scope: null, file: !195, line: 40, type: !203, isLocal: true, isDefinition: true)
!203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 24, align: 8, elements: !204)
!204 = !{!205}
!205 = !DISubrange(count: 3, lowerBound: 0)
!206 = !DIGlobalVariableExpression(var: !207, expr: !DIExpression())
!207 = distinct !DIGlobalVariable(scope: null, file: !195, line: 46, type: !208, isLocal: true, isDefinition: true)
!208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 128, align: 8, elements: !209)
!209 = !{!210}
!210 = !DISubrange(count: 16, lowerBound: 0)
!211 = !DIGlobalVariableExpression(var: !212, expr: !DIExpression())
!212 = distinct !DIGlobalVariable(scope: null, file: !195, line: 51, type: !208, isLocal: true, isDefinition: true)
!213 = distinct !DICompileUnit(language: DW_LANG_C99, file: !147, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !214)
!214 = !{!215, !218, !266, !274, !289, !299, !305, !314, !340, !347, !353, !373, !378, !383, !385, !387, !389, !391, !393, !395, !397, !402, !404, !409, !411, !414, !416, !418, !420, !422, !427, !432, !434, !439, !441, !443, !448, !450, !452, !454, !456, !458, !460, !462, !464, !469, !471, !473, !475, !481, !483, !485}
!215 = !DIGlobalVariableExpression(var: !216, expr: !DIExpression())
!216 = distinct !DIGlobalVariable(name: "internal/cpu.CacheLineSize", linkageName: "internal/cpu.CacheLineSize", scope: !217, file: !217, line: 17, type: !21, isLocal: false, isDefinition: true, align: 64)
!217 = !DIFile(filename: "cpu.go", directory: "/usr/local/go/src/internal/cpu")
!218 = !DIGlobalVariableExpression(var: !219, expr: !DIExpression())
!219 = distinct !DIGlobalVariable(name: "internal/cpu.X86", linkageName: "internal/cpu.X86", scope: !217, file: !217, line: 23, type: !220, isLocal: false, isDefinition: true, align: 8)
!220 = !DICompositeType(tag: DW_TAG_structure_type, size: 1304, align: 8, elements: !221)
!221 = !{!222, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !223, size: 512, align: 8)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/cpu.CacheLinePad", baseType: !224)
!224 = !DICompositeType(tag: DW_TAG_structure_type, size: 512, align: 8, elements: !225)
!225 = !{!226}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !227, size: 512, align: 8)
!227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 512, align: 8, elements: !228)
!228 = !{!229}
!229 = !DISubrange(count: 64, lowerBound: 0)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "HasAES", baseType: !47, size: 8, align: 8, offset: 512)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "HasADX", baseType: !47, size: 8, align: 8, offset: 520)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX", baseType: !47, size: 8, align: 8, offset: 528)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVXVNNI", baseType: !47, size: 8, align: 8, offset: 536)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX2", baseType: !47, size: 8, align: 8, offset: 544)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512", baseType: !47, size: 8, align: 8, offset: 552)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512F", baseType: !47, size: 8, align: 8, offset: 560)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512CD", baseType: !47, size: 8, align: 8, offset: 568)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512BW", baseType: !47, size: 8, align: 8, offset: 576)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512DQ", baseType: !47, size: 8, align: 8, offset: 584)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VL", baseType: !47, size: 8, align: 8, offset: 592)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512GFNI", baseType: !47, size: 8, align: 8, offset: 600)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VAES", baseType: !47, size: 8, align: 8, offset: 608)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VNNI", baseType: !47, size: 8, align: 8, offset: 616)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VBMI", baseType: !47, size: 8, align: 8, offset: 624)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VBMI2", baseType: !47, size: 8, align: 8, offset: 632)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512BITALG", baseType: !47, size: 8, align: 8, offset: 640)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VPOPCNTDQ", baseType: !47, size: 8, align: 8, offset: 648)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "HasAVX512VPCLMULQDQ", baseType: !47, size: 8, align: 8, offset: 656)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "HasBMI1", baseType: !47, size: 8, align: 8, offset: 664)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "HasBMI2", baseType: !47, size: 8, align: 8, offset: 672)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "HasERMS", baseType: !47, size: 8, align: 8, offset: 680)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "HasFSRM", baseType: !47, size: 8, align: 8, offset: 688)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "HasFMA", baseType: !47, size: 8, align: 8, offset: 696)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "HasGFNI", baseType: !47, size: 8, align: 8, offset: 704)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "HasOSXSAVE", baseType: !47, size: 8, align: 8, offset: 712)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "HasPCLMULQDQ", baseType: !47, size: 8, align: 8, offset: 720)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "HasPOPCNT", baseType: !47, size: 8, align: 8, offset: 728)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "HasRDTSCP", baseType: !47, size: 8, align: 8, offset: 736)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA", baseType: !47, size: 8, align: 8, offset: 744)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "HasSSE3", baseType: !47, size: 8, align: 8, offset: 752)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "HasSSSE3", baseType: !47, size: 8, align: 8, offset: 760)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "HasSSE41", baseType: !47, size: 8, align: 8, offset: 768)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "HasSSE42", baseType: !47, size: 8, align: 8, offset: 776)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "HasVAES", baseType: !47, size: 8, align: 8, offset: 784)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !223, size: 512, align: 8, offset: 792)
!266 = !DIGlobalVariableExpression(var: !267, expr: !DIExpression())
!267 = distinct !DIGlobalVariable(name: "internal/cpu.ARM", linkageName: "internal/cpu.ARM", scope: !217, file: !217, line: 65, type: !268, isLocal: false, isDefinition: true, align: 8)
!268 = !DICompositeType(tag: DW_TAG_structure_type, size: 1048, align: 8, elements: !269)
!269 = !{!222, !270, !271, !272, !273}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "HasVFPv4", baseType: !47, size: 8, align: 8, offset: 512)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "HasIDIVA", baseType: !47, size: 8, align: 8, offset: 520)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "HasV7Atomics", baseType: !47, size: 8, align: 8, offset: 528)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !223, size: 512, align: 8, offset: 536)
!274 = !DIGlobalVariableExpression(var: !275, expr: !DIExpression())
!275 = distinct !DIGlobalVariable(name: "internal/cpu.ARM64", linkageName: "internal/cpu.ARM64", scope: !217, file: !217, line: 75, type: !276, isLocal: false, isDefinition: true, align: 8)
!276 = !DICompositeType(tag: DW_TAG_structure_type, size: 1112, align: 8, elements: !277)
!277 = !{!222, !230, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "HasPMULL", baseType: !47, size: 8, align: 8, offset: 520)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA1", baseType: !47, size: 8, align: 8, offset: 528)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA2", baseType: !47, size: 8, align: 8, offset: 536)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA512", baseType: !47, size: 8, align: 8, offset: 544)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA3", baseType: !47, size: 8, align: 8, offset: 552)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "HasCRC32", baseType: !47, size: 8, align: 8, offset: 560)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "HasATOMICS", baseType: !47, size: 8, align: 8, offset: 568)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "HasCPUID", baseType: !47, size: 8, align: 8, offset: 576)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "HasDIT", baseType: !47, size: 8, align: 8, offset: 584)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "IsNeoverse", baseType: !47, size: 8, align: 8, offset: 592)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !223, size: 512, align: 8, offset: 600)
!289 = !DIGlobalVariableExpression(var: !290, expr: !DIExpression())
!290 = distinct !DIGlobalVariable(name: "internal/cpu.Loong64", linkageName: "internal/cpu.Loong64", scope: !217, file: !217, line: 93, type: !291, isLocal: false, isDefinition: true, align: 8)
!291 = !DICompositeType(tag: DW_TAG_structure_type, size: 1064, align: 8, elements: !292)
!292 = !{!222, !293, !294, !295, !296, !297, !298}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "HasLSX", baseType: !47, size: 8, align: 8, offset: 512)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "HasLASX", baseType: !47, size: 8, align: 8, offset: 520)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "HasCRC32", baseType: !47, size: 8, align: 8, offset: 528)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "HasLAMCAS", baseType: !47, size: 8, align: 8, offset: 536)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "HasLAM_BH", baseType: !47, size: 8, align: 8, offset: 544)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !223, size: 512, align: 8, offset: 552)
!299 = !DIGlobalVariableExpression(var: !300, expr: !DIExpression())
!300 = distinct !DIGlobalVariable(name: "internal/cpu.MIPS64X", linkageName: "internal/cpu.MIPS64X", scope: !217, file: !217, line: 103, type: !301, isLocal: false, isDefinition: true, align: 8)
!301 = !DICompositeType(tag: DW_TAG_structure_type, size: 1032, align: 8, elements: !302)
!302 = !{!222, !303, !304}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "HasMSA", baseType: !47, size: 8, align: 8, offset: 512)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !223, size: 512, align: 8, offset: 520)
!305 = !DIGlobalVariableExpression(var: !306, expr: !DIExpression())
!306 = distinct !DIGlobalVariable(name: "internal/cpu.PPC64", linkageName: "internal/cpu.PPC64", scope: !217, file: !217, line: 114, type: !307, isLocal: false, isDefinition: true, align: 8)
!307 = !DICompositeType(tag: DW_TAG_structure_type, size: 1064, align: 8, elements: !308)
!308 = !{!222, !309, !310, !311, !312, !313, !298}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "HasDARN", baseType: !47, size: 8, align: 8, offset: 512)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "HasSCV", baseType: !47, size: 8, align: 8, offset: 520)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "IsPOWER8", baseType: !47, size: 8, align: 8, offset: 528)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "IsPOWER9", baseType: !47, size: 8, align: 8, offset: 536)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "IsPOWER10", baseType: !47, size: 8, align: 8, offset: 544)
!314 = !DIGlobalVariableExpression(var: !315, expr: !DIExpression())
!315 = distinct !DIGlobalVariable(name: "internal/cpu.S390X", linkageName: "internal/cpu.S390X", scope: !217, file: !217, line: 124, type: !316, isLocal: false, isDefinition: true, align: 8)
!316 = !DICompositeType(tag: DW_TAG_structure_type, size: 1192, align: 8, elements: !317)
!317 = !{!222, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "HasZARCH", baseType: !47, size: 8, align: 8, offset: 512)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "HasSTFLE", baseType: !47, size: 8, align: 8, offset: 520)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "HasLDISP", baseType: !47, size: 8, align: 8, offset: 528)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "HasEIMM", baseType: !47, size: 8, align: 8, offset: 536)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "HasDFP", baseType: !47, size: 8, align: 8, offset: 544)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "HasETF3EH", baseType: !47, size: 8, align: 8, offset: 552)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "HasMSA", baseType: !47, size: 8, align: 8, offset: 560)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "HasAES", baseType: !47, size: 8, align: 8, offset: 568)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "HasAESCBC", baseType: !47, size: 8, align: 8, offset: 576)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "HasAESCTR", baseType: !47, size: 8, align: 8, offset: 584)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "HasAESGCM", baseType: !47, size: 8, align: 8, offset: 592)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "HasGHASH", baseType: !47, size: 8, align: 8, offset: 600)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA1", baseType: !47, size: 8, align: 8, offset: 608)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA256", baseType: !47, size: 8, align: 8, offset: 616)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA512", baseType: !47, size: 8, align: 8, offset: 624)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "HasSHA3", baseType: !47, size: 8, align: 8, offset: 632)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "HasVX", baseType: !47, size: 8, align: 8, offset: 640)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "HasVXE", baseType: !47, size: 8, align: 8, offset: 648)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "HasKDSA", baseType: !47, size: 8, align: 8, offset: 656)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "HasECDSA", baseType: !47, size: 8, align: 8, offset: 664)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "HasEDDSA", baseType: !47, size: 8, align: 8, offset: 672)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !223, size: 512, align: 8, offset: 680)
!340 = !DIGlobalVariableExpression(var: !341, expr: !DIExpression())
!341 = distinct !DIGlobalVariable(name: "internal/cpu.RISCV64", linkageName: "internal/cpu.RISCV64", scope: !217, file: !217, line: 154, type: !342, isLocal: false, isDefinition: true, align: 8)
!342 = !DICompositeType(tag: DW_TAG_structure_type, size: 1048, align: 8, elements: !343)
!343 = !{!222, !344, !345, !346, !273}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "HasFastMisaligned", baseType: !47, size: 8, align: 8, offset: 512)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "HasV", baseType: !47, size: 8, align: 8, offset: 520)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "HasZbb", baseType: !47, size: 8, align: 8, offset: 528)
!347 = !DIGlobalVariableExpression(var: !348, expr: !DIExpression())
!348 = distinct !DIGlobalVariable(name: "internal/cpu.doDerived", linkageName: "internal/cpu.doDerived", scope: !217, file: !217, line: 174, type: !349, isLocal: false, isDefinition: true, align: 64)
!349 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !350)
!350 = !{!351, !352}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "context", baseType: !9, size: 64, align: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "fn", baseType: !9, size: 64, align: 64, offset: 64)
!353 = !DIGlobalVariableExpression(var: !354, expr: !DIExpression())
!354 = distinct !DIGlobalVariable(name: "internal/cpu.options", linkageName: "internal/cpu.options", scope: !217, file: !217, line: 192, type: !355, isLocal: false, isDefinition: true, align: 64)
!355 = !DICompositeType(tag: DW_TAG_structure_type, name: "[]internal/cpu.option", size: 192, align: 64, elements: !356)
!356 = !{!357, !367, !372}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", baseType: !358, size: 64, align: 64)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64, align: 64, dwarfAddressSpace: 0)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/cpu.option", baseType: !360)
!360 = !DICompositeType(tag: DW_TAG_structure_type, size: 256, align: 64, elements: !361)
!361 = !{!362, !368, !370, !371}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "Name", baseType: !363, size: 128, align: 64)
!363 = !DICompositeType(tag: DW_TAG_structure_type, name: "string", size: 128, align: 64, elements: !364)
!364 = !{!365, !367}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", baseType: !366, size: 64, align: 64)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64, align: 64, dwarfAddressSpace: 0)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "len", baseType: !21, size: 64, align: 64, offset: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "Feature", baseType: !369, size: 64, align: 64, offset: 128)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64, dwarfAddressSpace: 0)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "Specified", baseType: !47, size: 8, align: 8, offset: 192)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "Enable", baseType: !47, size: 8, align: 8, offset: 200)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "cap", baseType: !21, size: 64, align: 64, offset: 128)
!373 = !DIGlobalVariableExpression(var: !374, expr: !DIExpression())
!374 = distinct !DIGlobalVariable(scope: null, file: !217, line: 218, type: !375, isLocal: true, isDefinition: true)
!375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 32, align: 8, elements: !376)
!376 = !{!377}
!377 = !DISubrange(count: 4, lowerBound: 0)
!378 = !DIGlobalVariableExpression(var: !379, expr: !DIExpression())
!379 = distinct !DIGlobalVariable(scope: null, file: !217, line: 223, type: !380, isLocal: true, isDefinition: true)
!380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 264, align: 8, elements: !381)
!381 = !{!382}
!382 = !DISubrange(count: 33, lowerBound: 0)
!383 = !DIGlobalVariableExpression(var: !384, expr: !DIExpression())
!384 = distinct !DIGlobalVariable(scope: null, file: !217, line: 223, type: !116, isLocal: true, isDefinition: true)
!385 = !DIGlobalVariableExpression(var: !386, expr: !DIExpression())
!386 = distinct !DIGlobalVariable(scope: null, file: !217, line: 230, type: !116, isLocal: true, isDefinition: true)
!387 = !DIGlobalVariableExpression(var: !388, expr: !DIExpression())
!388 = distinct !DIGlobalVariable(scope: null, file: !217, line: 239, type: !203, isLocal: true, isDefinition: true)
!389 = !DIGlobalVariableExpression(var: !390, expr: !DIExpression())
!390 = distinct !DIGlobalVariable(scope: null, file: !217, line: 255, type: !55, isLocal: true, isDefinition: true)
!391 = !DIGlobalVariableExpression(var: !392, expr: !DIExpression())
!392 = distinct !DIGlobalVariable(scope: null, file: !217, line: 255, type: !116, isLocal: true, isDefinition: true)
!393 = !DIGlobalVariableExpression(var: !394, expr: !DIExpression())
!394 = distinct !DIGlobalVariable(scope: null, file: !217, line: 232, type: !203, isLocal: true, isDefinition: true)
!395 = !DIGlobalVariableExpression(var: !396, expr: !DIExpression())
!396 = distinct !DIGlobalVariable(scope: null, file: !217, line: 235, type: !208, isLocal: true, isDefinition: true)
!397 = !DIGlobalVariableExpression(var: !398, expr: !DIExpression())
!398 = distinct !DIGlobalVariable(scope: null, file: !217, line: 235, type: !399, isLocal: true, isDefinition: true)
!399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 256, align: 8, elements: !400)
!400 = !{!401}
!401 = !DISubrange(count: 32, lowerBound: 0)
!402 = !DIGlobalVariableExpression(var: !403, expr: !DIExpression())
!403 = distinct !DIGlobalVariable(scope: null, file: !217, line: 235, type: !116, isLocal: true, isDefinition: true)
!404 = !DIGlobalVariableExpression(var: !405, expr: !DIExpression())
!405 = distinct !DIGlobalVariable(scope: null, file: !217, line: 264, type: !406, isLocal: true, isDefinition: true)
!406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 200, align: 8, elements: !407)
!407 = !{!408}
!408 = !DISubrange(count: 25, lowerBound: 0)
!409 = !DIGlobalVariableExpression(var: !410, expr: !DIExpression())
!410 = distinct !DIGlobalVariable(scope: null, file: !217, line: 264, type: !121, isLocal: true, isDefinition: true)
!411 = !DIGlobalVariableExpression(var: !412, expr: !DIExpression())
!412 = distinct !DIGlobalVariable(name: "internal/cpu.maxExtendedFunctionInformation", linkageName: "internal/cpu.maxExtendedFunctionInformation", scope: !413, file: !413, line: 69, type: !43, isLocal: false, isDefinition: true, align: 32)
!413 = !DIFile(filename: "cpu_x86.go", directory: "/usr/local/go/src/internal/cpu")
!414 = !DIGlobalVariableExpression(var: !415, expr: !DIExpression())
!415 = distinct !DIGlobalVariable(scope: null, file: !413, line: 73, type: !203, isLocal: true, isDefinition: true)
!416 = !DIGlobalVariableExpression(var: !417, expr: !DIExpression())
!417 = distinct !DIGlobalVariable(scope: null, file: !413, line: 74, type: !203, isLocal: true, isDefinition: true)
!418 = !DIGlobalVariableExpression(var: !419, expr: !DIExpression())
!419 = distinct !DIGlobalVariable(scope: null, file: !413, line: 75, type: !375, isLocal: true, isDefinition: true)
!420 = !DIGlobalVariableExpression(var: !421, expr: !DIExpression())
!421 = distinct !DIGlobalVariable(scope: null, file: !413, line: 76, type: !375, isLocal: true, isDefinition: true)
!422 = !DIGlobalVariableExpression(var: !423, expr: !DIExpression())
!423 = distinct !DIGlobalVariable(scope: null, file: !413, line: 77, type: !424, isLocal: true, isDefinition: true)
!424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 72, align: 8, elements: !425)
!425 = !{!426}
!426 = !DISubrange(count: 9, lowerBound: 0)
!427 = !DIGlobalVariableExpression(var: !428, expr: !DIExpression())
!428 = distinct !DIGlobalVariable(scope: null, file: !413, line: 78, type: !429, isLocal: true, isDefinition: true)
!429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 48, align: 8, elements: !430)
!430 = !{!431}
!431 = !DISubrange(count: 6, lowerBound: 0)
!432 = !DIGlobalVariableExpression(var: !433, expr: !DIExpression())
!433 = distinct !DIGlobalVariable(scope: null, file: !413, line: 79, type: !203, isLocal: true, isDefinition: true)
!434 = !DIGlobalVariableExpression(var: !435, expr: !DIExpression())
!435 = distinct !DIGlobalVariable(scope: null, file: !413, line: 80, type: !436, isLocal: true, isDefinition: true)
!436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 80, align: 8, elements: !437)
!437 = !{!438}
!438 = !DISubrange(count: 10, lowerBound: 0)
!439 = !DIGlobalVariableExpression(var: !440, expr: !DIExpression())
!440 = distinct !DIGlobalVariable(scope: null, file: !413, line: 87, type: !429, isLocal: true, isDefinition: true)
!441 = !DIGlobalVariableExpression(var: !442, expr: !DIExpression())
!442 = distinct !DIGlobalVariable(scope: null, file: !413, line: 88, type: !375, isLocal: true, isDefinition: true)
!443 = !DIGlobalVariableExpression(var: !444, expr: !DIExpression())
!444 = distinct !DIGlobalVariable(scope: null, file: !413, line: 89, type: !445, isLocal: true, isDefinition: true)
!445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 40, align: 8, elements: !446)
!446 = !{!447}
!447 = !DISubrange(count: 5, lowerBound: 0)
!448 = !DIGlobalVariableExpression(var: !449, expr: !DIExpression())
!449 = distinct !DIGlobalVariable(scope: null, file: !413, line: 90, type: !445, isLocal: true, isDefinition: true)
!450 = !DIGlobalVariableExpression(var: !451, expr: !DIExpression())
!451 = distinct !DIGlobalVariable(scope: null, file: !413, line: 91, type: !445, isLocal: true, isDefinition: true)
!452 = !DIGlobalVariableExpression(var: !453, expr: !DIExpression())
!453 = distinct !DIGlobalVariable(scope: null, file: !413, line: 97, type: !203, isLocal: true, isDefinition: true)
!454 = !DIGlobalVariableExpression(var: !455, expr: !DIExpression())
!455 = distinct !DIGlobalVariable(scope: null, file: !413, line: 98, type: !375, isLocal: true, isDefinition: true)
!456 = !DIGlobalVariableExpression(var: !457, expr: !DIExpression())
!457 = distinct !DIGlobalVariable(scope: null, file: !413, line: 99, type: !375, isLocal: true, isDefinition: true)
!458 = !DIGlobalVariableExpression(var: !459, expr: !DIExpression())
!459 = distinct !DIGlobalVariable(scope: null, file: !413, line: 100, type: !375, isLocal: true, isDefinition: true)
!460 = !DIGlobalVariableExpression(var: !461, expr: !DIExpression())
!461 = distinct !DIGlobalVariable(scope: null, file: !413, line: 101, type: !203, isLocal: true, isDefinition: true)
!462 = !DIGlobalVariableExpression(var: !463, expr: !DIExpression())
!463 = distinct !DIGlobalVariable(scope: null, file: !413, line: 107, type: !106, isLocal: true, isDefinition: true)
!464 = !DIGlobalVariableExpression(var: !465, expr: !DIExpression())
!465 = distinct !DIGlobalVariable(scope: null, file: !413, line: 108, type: !466, isLocal: true, isDefinition: true)
!466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 64, align: 8, elements: !467)
!467 = !{!468}
!468 = !DISubrange(count: 8, lowerBound: 0)
!469 = !DIGlobalVariableExpression(var: !470, expr: !DIExpression())
!470 = distinct !DIGlobalVariable(scope: null, file: !413, line: 109, type: !466, isLocal: true, isDefinition: true)
!471 = !DIGlobalVariableExpression(var: !472, expr: !DIExpression())
!472 = distinct !DIGlobalVariable(scope: null, file: !413, line: 110, type: !466, isLocal: true, isDefinition: true)
!473 = !DIGlobalVariableExpression(var: !474, expr: !DIExpression())
!474 = distinct !DIGlobalVariable(scope: null, file: !413, line: 111, type: !466, isLocal: true, isDefinition: true)
!475 = !DIGlobalVariableExpression(var: !476, expr: !DIExpression())
!476 = distinct !DIGlobalVariable(scope: null, file: !477, line: 1, type: !478, isLocal: true, isDefinition: true)
!477 = !DIFile(filename: "datacache_x86.go", directory: "/usr/local/go/src/internal/cpu")
!478 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 104, align: 8, elements: !479)
!479 = !{!480}
!480 = !DISubrange(count: 13, lowerBound: 0)
!481 = !DIGlobalVariableExpression(var: !482, expr: !DIExpression())
!482 = distinct !DIGlobalVariable(name: "type *string", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!483 = !DIGlobalVariableExpression(var: !484, expr: !DIExpression())
!484 = distinct !DIGlobalVariable(name: "type string", scope: !87, file: !87, line: 1, type: !88, isLocal: false, isDefinition: true, align: 64)
!485 = !DIGlobalVariableExpression(var: !486, expr: !DIExpression())
!486 = distinct !DIGlobalVariable(scope: null, file: !477, line: 1, type: !487, isLocal: true, isDefinition: true)
!487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 664, align: 8, elements: !488)
!488 = !{!489}
!489 = !DISubrange(count: 83, lowerBound: 0)
!490 = distinct !DICompileUnit(language: DW_LANG_C99, file: !147, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !491)
!491 = !{!492, !496, !498, !507}
!492 = !DIGlobalVariableExpression(var: !493, expr: !DIExpression())
!493 = distinct !DIGlobalVariable(name: "math/bits.deBruijn32tab", linkageName: "math/bits.deBruijn32tab", scope: !494, file: !494, line: 44, type: !495, isLocal: false, isDefinition: true, align: 8)
!494 = !DIFile(filename: "bits.go", directory: "/usr/local/go/src/math/bits")
!495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 256, align: 8, elements: !400)
!496 = !DIGlobalVariableExpression(var: !497, expr: !DIExpression())
!497 = distinct !DIGlobalVariable(name: "math/bits.deBruijn64tab", linkageName: "math/bits.deBruijn64tab", scope: !494, file: !494, line: 51, type: !227, isLocal: false, isDefinition: true, align: 8)
!498 = !DIGlobalVariableExpression(var: !499, expr: !DIExpression())
!499 = distinct !DIGlobalVariable(name: "math/bits.overflowError", linkageName: "runtime.overflowError", scope: !500, file: !500, line: 12, type: !501, isLocal: false, isDefinition: true, align: 64)
!500 = !DIFile(filename: "bits_errors.go", directory: "/usr/local/go/src/math/bits")
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "error", baseType: !502)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime._interface", baseType: !503)
!503 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !504)
!504 = !{!505, !506}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "typecode", baseType: !9, size: 64, align: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "value", baseType: !9, size: 64, align: 64, offset: 64)
!507 = !DIGlobalVariableExpression(var: !508, expr: !DIExpression())
!508 = distinct !DIGlobalVariable(name: "math/bits.divideError", linkageName: "runtime.divideError", scope: !500, file: !500, line: 15, type: !501, isLocal: false, isDefinition: true, align: 64)
!509 = distinct !DICompileUnit(language: DW_LANG_C99, file: !147, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !510)
!510 = !{!511, !513, !516, !521, !524, !527, !531, !533, !535, !537, !539, !541, !543, !545, !547, !549, !551, !553, !555, !557, !559, !561, !564, !566, !568, !570, !572, !574, !576, !578, !580, !582, !584, !586, !588, !590, !592, !594, !600, !602, !604, !609, !611, !613, !615, !619, !622, !627, !630, !632, !636, !638, !641, !643, !647, !651, !653, !655, !658, !660, !662, !664, !666, !668, !670, !672, !674, !676, !678, !680, !682, !684, !686, !688, !690, !692, !694, !696, !698, !700, !702, !704}
!511 = !DIGlobalVariableExpression(var: !512, expr: !DIExpression())
!512 = distinct !DIGlobalVariable(name: "internal/cpu.X86", linkageName: "internal/cpu.X86", scope: !217, file: !217, line: 23, type: !220, isLocal: false, isDefinition: true, align: 8)
!513 = !DIGlobalVariableExpression(var: !514, expr: !DIExpression())
!514 = distinct !DIGlobalVariable(name: "math.useFMA", linkageName: "math.useFMA", scope: !515, file: !515, line: 11, type: !47, isLocal: false, isDefinition: true, align: 8)
!515 = !DIFile(filename: "exp_amd64.go", directory: "/usr/local/go/src/math")
!516 = !DIGlobalVariableExpression(var: !517, expr: !DIExpression())
!517 = distinct !DIGlobalVariable(name: "math._gamP", linkageName: "math._gamP", scope: !518, file: !518, line: 66, type: !519, isLocal: false, isDefinition: true, align: 64)
!518 = !DIFile(filename: "gamma.go", directory: "/usr/local/go/src/math")
!519 = !DICompositeType(tag: DW_TAG_array_type, baseType: !520, size: 448, align: 64, elements: !107)
!520 = !DIBasicType(name: "float64", size: 64, encoding: DW_ATE_float)
!521 = !DIGlobalVariableExpression(var: !522, expr: !DIExpression())
!522 = distinct !DIGlobalVariable(name: "math._gamQ", linkageName: "math._gamQ", scope: !518, file: !518, line: 75, type: !523, isLocal: false, isDefinition: true, align: 64)
!523 = !DICompositeType(tag: DW_TAG_array_type, baseType: !520, size: 512, align: 64, elements: !467)
!524 = !DIGlobalVariableExpression(var: !525, expr: !DIExpression())
!525 = distinct !DIGlobalVariable(name: "math._gamS", linkageName: "math._gamS", scope: !518, file: !518, line: 85, type: !526, isLocal: false, isDefinition: true, align: 64)
!526 = !DICompositeType(tag: DW_TAG_array_type, baseType: !520, size: 320, align: 64, elements: !446)
!527 = !DIGlobalVariableExpression(var: !528, expr: !DIExpression())
!528 = distinct !DIGlobalVariable(name: "math.p0R8", linkageName: "math.p0R8", scope: !529, file: !529, line: 240, type: !530, isLocal: false, isDefinition: true, align: 64)
!529 = !DIFile(filename: "j0.go", directory: "/usr/local/go/src/math")
!530 = !DICompositeType(tag: DW_TAG_array_type, baseType: !520, size: 384, align: 64, elements: !430)
!531 = !DIGlobalVariableExpression(var: !532, expr: !DIExpression())
!532 = distinct !DIGlobalVariable(name: "math.p0S8", linkageName: "math.p0S8", scope: !529, file: !529, line: 248, type: !526, isLocal: false, isDefinition: true, align: 64)
!533 = !DIGlobalVariableExpression(var: !534, expr: !DIExpression())
!534 = distinct !DIGlobalVariable(name: "math.p0R5", linkageName: "math.p0R5", scope: !529, file: !529, line: 257, type: !530, isLocal: false, isDefinition: true, align: 64)
!535 = !DIGlobalVariableExpression(var: !536, expr: !DIExpression())
!536 = distinct !DIGlobalVariable(name: "math.p0S5", linkageName: "math.p0S5", scope: !529, file: !529, line: 265, type: !526, isLocal: false, isDefinition: true, align: 64)
!537 = !DIGlobalVariableExpression(var: !538, expr: !DIExpression())
!538 = distinct !DIGlobalVariable(name: "math.p0R3", linkageName: "math.p0R3", scope: !529, file: !529, line: 274, type: !530, isLocal: false, isDefinition: true, align: 64)
!539 = !DIGlobalVariableExpression(var: !540, expr: !DIExpression())
!540 = distinct !DIGlobalVariable(name: "math.p0S3", linkageName: "math.p0S3", scope: !529, file: !529, line: 282, type: !526, isLocal: false, isDefinition: true, align: 64)
!541 = !DIGlobalVariableExpression(var: !542, expr: !DIExpression())
!542 = distinct !DIGlobalVariable(name: "math.p0R2", linkageName: "math.p0R2", scope: !529, file: !529, line: 291, type: !530, isLocal: false, isDefinition: true, align: 64)
!543 = !DIGlobalVariableExpression(var: !544, expr: !DIExpression())
!544 = distinct !DIGlobalVariable(name: "math.p0S2", linkageName: "math.p0S2", scope: !529, file: !529, line: 299, type: !526, isLocal: false, isDefinition: true, align: 64)
!545 = !DIGlobalVariableExpression(var: !546, expr: !DIExpression())
!546 = distinct !DIGlobalVariable(name: "math.q0R8", linkageName: "math.q0R8", scope: !529, file: !529, line: 339, type: !530, isLocal: false, isDefinition: true, align: 64)
!547 = !DIGlobalVariableExpression(var: !548, expr: !DIExpression())
!548 = distinct !DIGlobalVariable(name: "math.q0S8", linkageName: "math.q0S8", scope: !529, file: !529, line: 347, type: !530, isLocal: false, isDefinition: true, align: 64)
!549 = !DIGlobalVariableExpression(var: !550, expr: !DIExpression())
!550 = distinct !DIGlobalVariable(name: "math.q0R5", linkageName: "math.q0R5", scope: !529, file: !529, line: 357, type: !530, isLocal: false, isDefinition: true, align: 64)
!551 = !DIGlobalVariableExpression(var: !552, expr: !DIExpression())
!552 = distinct !DIGlobalVariable(name: "math.q0S5", linkageName: "math.q0S5", scope: !529, file: !529, line: 365, type: !530, isLocal: false, isDefinition: true, align: 64)
!553 = !DIGlobalVariableExpression(var: !554, expr: !DIExpression())
!554 = distinct !DIGlobalVariable(name: "math.q0R3", linkageName: "math.q0R3", scope: !529, file: !529, line: 375, type: !530, isLocal: false, isDefinition: true, align: 64)
!555 = !DIGlobalVariableExpression(var: !556, expr: !DIExpression())
!556 = distinct !DIGlobalVariable(name: "math.q0S3", linkageName: "math.q0S3", scope: !529, file: !529, line: 383, type: !530, isLocal: false, isDefinition: true, align: 64)
!557 = !DIGlobalVariableExpression(var: !558, expr: !DIExpression())
!558 = distinct !DIGlobalVariable(name: "math.q0R2", linkageName: "math.q0R2", scope: !529, file: !529, line: 393, type: !530, isLocal: false, isDefinition: true, align: 64)
!559 = !DIGlobalVariableExpression(var: !560, expr: !DIExpression())
!560 = distinct !DIGlobalVariable(name: "math.q0S2", linkageName: "math.q0S2", scope: !529, file: !529, line: 401, type: !530, isLocal: false, isDefinition: true, align: 64)
!561 = !DIGlobalVariableExpression(var: !562, expr: !DIExpression())
!562 = distinct !DIGlobalVariable(name: "math.p1R8", linkageName: "math.p1R8", scope: !563, file: !563, line: 235, type: !530, isLocal: false, isDefinition: true, align: 64)
!563 = !DIFile(filename: "j1.go", directory: "/usr/local/go/src/math")
!564 = !DIGlobalVariableExpression(var: !565, expr: !DIExpression())
!565 = distinct !DIGlobalVariable(name: "math.p1S8", linkageName: "math.p1S8", scope: !563, file: !563, line: 243, type: !526, isLocal: false, isDefinition: true, align: 64)
!566 = !DIGlobalVariableExpression(var: !567, expr: !DIExpression())
!567 = distinct !DIGlobalVariable(name: "math.p1R5", linkageName: "math.p1R5", scope: !563, file: !563, line: 252, type: !530, isLocal: false, isDefinition: true, align: 64)
!568 = !DIGlobalVariableExpression(var: !569, expr: !DIExpression())
!569 = distinct !DIGlobalVariable(name: "math.p1S5", linkageName: "math.p1S5", scope: !563, file: !563, line: 260, type: !526, isLocal: false, isDefinition: true, align: 64)
!570 = !DIGlobalVariableExpression(var: !571, expr: !DIExpression())
!571 = distinct !DIGlobalVariable(name: "math.p1R3", linkageName: "math.p1R3", scope: !563, file: !563, line: 269, type: !530, isLocal: false, isDefinition: true, align: 64)
!572 = !DIGlobalVariableExpression(var: !573, expr: !DIExpression())
!573 = distinct !DIGlobalVariable(name: "math.p1S3", linkageName: "math.p1S3", scope: !563, file: !563, line: 277, type: !526, isLocal: false, isDefinition: true, align: 64)
!574 = !DIGlobalVariableExpression(var: !575, expr: !DIExpression())
!575 = distinct !DIGlobalVariable(name: "math.p1R2", linkageName: "math.p1R2", scope: !563, file: !563, line: 286, type: !530, isLocal: false, isDefinition: true, align: 64)
!576 = !DIGlobalVariableExpression(var: !577, expr: !DIExpression())
!577 = distinct !DIGlobalVariable(name: "math.p1S2", linkageName: "math.p1S2", scope: !563, file: !563, line: 294, type: !526, isLocal: false, isDefinition: true, align: 64)
!578 = !DIGlobalVariableExpression(var: !579, expr: !DIExpression())
!579 = distinct !DIGlobalVariable(name: "math.q1R8", linkageName: "math.q1R8", scope: !563, file: !563, line: 334, type: !530, isLocal: false, isDefinition: true, align: 64)
!580 = !DIGlobalVariableExpression(var: !581, expr: !DIExpression())
!581 = distinct !DIGlobalVariable(name: "math.q1S8", linkageName: "math.q1S8", scope: !563, file: !563, line: 342, type: !530, isLocal: false, isDefinition: true, align: 64)
!582 = !DIGlobalVariableExpression(var: !583, expr: !DIExpression())
!583 = distinct !DIGlobalVariable(name: "math.q1R5", linkageName: "math.q1R5", scope: !563, file: !563, line: 352, type: !530, isLocal: false, isDefinition: true, align: 64)
!584 = !DIGlobalVariableExpression(var: !585, expr: !DIExpression())
!585 = distinct !DIGlobalVariable(name: "math.q1S5", linkageName: "math.q1S5", scope: !563, file: !563, line: 360, type: !530, isLocal: false, isDefinition: true, align: 64)
!586 = !DIGlobalVariableExpression(var: !587, expr: !DIExpression())
!587 = distinct !DIGlobalVariable(name: "math.q1R3", linkageName: "math.q1R3", scope: !563, file: !563, line: 370, type: !530, isLocal: false, isDefinition: true, align: 64)
!588 = !DIGlobalVariableExpression(var: !589, expr: !DIExpression())
!589 = distinct !DIGlobalVariable(name: "math.q1S3", linkageName: "math.q1S3", scope: !563, file: !563, line: 378, type: !530, isLocal: false, isDefinition: true, align: 64)
!590 = !DIGlobalVariableExpression(var: !591, expr: !DIExpression())
!591 = distinct !DIGlobalVariable(name: "math.q1R2", linkageName: "math.q1R2", scope: !563, file: !563, line: 388, type: !530, isLocal: false, isDefinition: true, align: 64)
!592 = !DIGlobalVariableExpression(var: !593, expr: !DIExpression())
!593 = distinct !DIGlobalVariable(name: "math.q1S2", linkageName: "math.q1S2", scope: !563, file: !563, line: 396, type: !530, isLocal: false, isDefinition: true, align: 64)
!594 = !DIGlobalVariableExpression(var: !595, expr: !DIExpression())
!595 = distinct !DIGlobalVariable(name: "math._lgamA", linkageName: "math._lgamA", scope: !596, file: !596, line: 91, type: !597, isLocal: false, isDefinition: true, align: 64)
!596 = !DIFile(filename: "lgamma.go", directory: "/usr/local/go/src/math")
!597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !520, size: 768, align: 64, elements: !598)
!598 = !{!599}
!599 = !DISubrange(count: 12, lowerBound: 0)
!600 = !DIGlobalVariableExpression(var: !601, expr: !DIExpression())
!601 = distinct !DIGlobalVariable(name: "math._lgamR", linkageName: "math._lgamR", scope: !596, file: !596, line: 105, type: !519, isLocal: false, isDefinition: true, align: 64)
!602 = !DIGlobalVariableExpression(var: !603, expr: !DIExpression())
!603 = distinct !DIGlobalVariable(name: "math._lgamS", linkageName: "math._lgamS", scope: !596, file: !596, line: 114, type: !519, isLocal: false, isDefinition: true, align: 64)
!604 = !DIGlobalVariableExpression(var: !605, expr: !DIExpression())
!605 = distinct !DIGlobalVariable(name: "math._lgamT", linkageName: "math._lgamT", scope: !596, file: !596, line: 123, type: !606, isLocal: false, isDefinition: true, align: 64)
!606 = !DICompositeType(tag: DW_TAG_array_type, baseType: !520, size: 960, align: 64, elements: !607)
!607 = !{!608}
!608 = !DISubrange(count: 15, lowerBound: 0)
!609 = !DIGlobalVariableExpression(var: !610, expr: !DIExpression())
!610 = distinct !DIGlobalVariable(name: "math._lgamU", linkageName: "math._lgamU", scope: !596, file: !596, line: 140, type: !530, isLocal: false, isDefinition: true, align: 64)
!611 = !DIGlobalVariableExpression(var: !612, expr: !DIExpression())
!612 = distinct !DIGlobalVariable(name: "math._lgamV", linkageName: "math._lgamV", scope: !596, file: !596, line: 148, type: !530, isLocal: false, isDefinition: true, align: 64)
!613 = !DIGlobalVariableExpression(var: !614, expr: !DIExpression())
!614 = distinct !DIGlobalVariable(name: "math._lgamW", linkageName: "math._lgamW", scope: !596, file: !596, line: 156, type: !519, isLocal: false, isDefinition: true, align: 64)
!615 = !DIGlobalVariableExpression(var: !616, expr: !DIExpression())
!616 = distinct !DIGlobalVariable(name: "math.pow10tab", linkageName: "math.pow10tab", scope: !617, file: !617, line: 8, type: !618, isLocal: false, isDefinition: true, align: 64)
!617 = !DIFile(filename: "pow10.go", directory: "/usr/local/go/src/math")
!618 = !DICompositeType(tag: DW_TAG_array_type, baseType: !520, size: 2048, align: 64, elements: !400)
!619 = !DIGlobalVariableExpression(var: !620, expr: !DIExpression())
!620 = distinct !DIGlobalVariable(name: "math.pow10postab32", linkageName: "math.pow10postab32", scope: !617, file: !617, line: 16, type: !621, isLocal: false, isDefinition: true, align: 64)
!621 = !DICompositeType(tag: DW_TAG_array_type, baseType: !520, size: 640, align: 64, elements: !437)
!622 = !DIGlobalVariableExpression(var: !623, expr: !DIExpression())
!623 = distinct !DIGlobalVariable(name: "math.pow10negtab32", linkageName: "math.pow10negtab32", scope: !617, file: !617, line: 21, type: !624, isLocal: false, isDefinition: true, align: 64)
!624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !520, size: 704, align: 64, elements: !625)
!625 = !{!626}
!626 = !DISubrange(count: 11, lowerBound: 0)
!627 = !DIGlobalVariableExpression(var: !628, expr: !DIExpression())
!628 = distinct !DIGlobalVariable(name: "math._sin", linkageName: "math._sin", scope: !629, file: !629, line: 93, type: !530, isLocal: false, isDefinition: true, align: 64)
!629 = !DIFile(filename: "sin.go", directory: "/usr/local/go/src/math")
!630 = !DIGlobalVariableExpression(var: !631, expr: !DIExpression())
!631 = distinct !DIGlobalVariable(name: "math._cos", linkageName: "math._cos", scope: !629, file: !629, line: 103, type: !530, isLocal: false, isDefinition: true, align: 64)
!632 = !DIGlobalVariableExpression(var: !633, expr: !DIExpression())
!633 = distinct !DIGlobalVariable(name: "math._tanP", linkageName: "math._tanP", scope: !634, file: !634, line: 63, type: !635, isLocal: false, isDefinition: true, align: 64)
!634 = !DIFile(filename: "tan.go", directory: "/usr/local/go/src/math")
!635 = !DICompositeType(tag: DW_TAG_array_type, baseType: !520, size: 192, align: 64, elements: !204)
!636 = !DIGlobalVariableExpression(var: !637, expr: !DIExpression())
!637 = distinct !DIGlobalVariable(name: "math._tanQ", linkageName: "math._tanQ", scope: !634, file: !634, line: 68, type: !526, isLocal: false, isDefinition: true, align: 64)
!638 = !DIGlobalVariableExpression(var: !639, expr: !DIExpression())
!639 = distinct !DIGlobalVariable(name: "math.tanhP", linkageName: "math.tanhP", scope: !640, file: !640, line: 57, type: !635, isLocal: false, isDefinition: true, align: 64)
!640 = !DIFile(filename: "tanh.go", directory: "/usr/local/go/src/math")
!641 = !DIGlobalVariableExpression(var: !642, expr: !DIExpression())
!642 = distinct !DIGlobalVariable(name: "math.tanhQ", linkageName: "math.tanhQ", scope: !640, file: !640, line: 62, type: !635, isLocal: false, isDefinition: true, align: 64)
!643 = !DIGlobalVariableExpression(var: !644, expr: !DIExpression())
!644 = distinct !DIGlobalVariable(name: "math.mPi4", linkageName: "math.mPi4", scope: !645, file: !645, line: 81, type: !646, isLocal: false, isDefinition: true, align: 64)
!645 = !DIFile(filename: "trig_reduce.go", directory: "/usr/local/go/src/math")
!646 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 1280, align: 64, elements: !68)
!647 = !DIGlobalVariableExpression(var: !648, expr: !DIExpression())
!648 = distinct !DIGlobalVariable(scope: null, file: !649, line: 1, type: !650, isLocal: true, isDefinition: true)
!649 = !DIFile(filename: "exp2_noasm.go", directory: "/usr/local/go/src/math")
!650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 120, align: 8, elements: !607)
!651 = !DIGlobalVariableExpression(var: !652, expr: !DIExpression())
!652 = distinct !DIGlobalVariable(name: "type *string", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!653 = !DIGlobalVariableExpression(var: !654, expr: !DIExpression())
!654 = distinct !DIGlobalVariable(name: "type string", scope: !87, file: !87, line: 1, type: !88, isLocal: false, isDefinition: true, align: 64)
!655 = !DIGlobalVariableExpression(var: !656, expr: !DIExpression())
!656 = distinct !DIGlobalVariable(scope: null, file: !657, line: 1, type: !650, isLocal: true, isDefinition: true)
!657 = !DIFile(filename: "stubs.go", directory: "/usr/local/go/src/math")
!658 = !DIGlobalVariableExpression(var: !659, expr: !DIExpression())
!659 = distinct !DIGlobalVariable(scope: null, file: !657, line: 1, type: !650, isLocal: true, isDefinition: true)
!660 = !DIGlobalVariableExpression(var: !661, expr: !DIExpression())
!661 = distinct !DIGlobalVariable(scope: null, file: !657, line: 1, type: !650, isLocal: true, isDefinition: true)
!662 = !DIGlobalVariableExpression(var: !663, expr: !DIExpression())
!663 = distinct !DIGlobalVariable(scope: null, file: !657, line: 1, type: !650, isLocal: true, isDefinition: true)
!664 = !DIGlobalVariableExpression(var: !665, expr: !DIExpression())
!665 = distinct !DIGlobalVariable(scope: null, file: !657, line: 1, type: !650, isLocal: true, isDefinition: true)
!666 = !DIGlobalVariableExpression(var: !667, expr: !DIExpression())
!667 = distinct !DIGlobalVariable(scope: null, file: !657, line: 1, type: !650, isLocal: true, isDefinition: true)
!668 = !DIGlobalVariableExpression(var: !669, expr: !DIExpression())
!669 = distinct !DIGlobalVariable(scope: null, file: !657, line: 1, type: !650, isLocal: true, isDefinition: true)
!670 = !DIGlobalVariableExpression(var: !671, expr: !DIExpression())
!671 = distinct !DIGlobalVariable(scope: null, file: !657, line: 1, type: !650, isLocal: true, isDefinition: true)
!672 = !DIGlobalVariableExpression(var: !673, expr: !DIExpression())
!673 = distinct !DIGlobalVariable(scope: null, file: !657, line: 1, type: !650, isLocal: true, isDefinition: true)
!674 = !DIGlobalVariableExpression(var: !675, expr: !DIExpression())
!675 = distinct !DIGlobalVariable(scope: null, file: !657, line: 1, type: !650, isLocal: true, isDefinition: true)
!676 = !DIGlobalVariableExpression(var: !677, expr: !DIExpression())
!677 = distinct !DIGlobalVariable(scope: null, file: !657, line: 1, type: !650, isLocal: true, isDefinition: true)
!678 = !DIGlobalVariableExpression(var: !679, expr: !DIExpression())
!679 = distinct !DIGlobalVariable(scope: null, file: !657, line: 1, type: !650, isLocal: true, isDefinition: true)
!680 = !DIGlobalVariableExpression(var: !681, expr: !DIExpression())
!681 = distinct !DIGlobalVariable(scope: null, file: !657, line: 1, type: !650, isLocal: true, isDefinition: true)
!682 = !DIGlobalVariableExpression(var: !683, expr: !DIExpression())
!683 = distinct !DIGlobalVariable(scope: null, file: !657, line: 1, type: !650, isLocal: true, isDefinition: true)
!684 = !DIGlobalVariableExpression(var: !685, expr: !DIExpression())
!685 = distinct !DIGlobalVariable(scope: null, file: !657, line: 1, type: !650, isLocal: true, isDefinition: true)
!686 = !DIGlobalVariableExpression(var: !687, expr: !DIExpression())
!687 = distinct !DIGlobalVariable(scope: null, file: !657, line: 1, type: !650, isLocal: true, isDefinition: true)
!688 = !DIGlobalVariableExpression(var: !689, expr: !DIExpression())
!689 = distinct !DIGlobalVariable(scope: null, file: !657, line: 1, type: !650, isLocal: true, isDefinition: true)
!690 = !DIGlobalVariableExpression(var: !691, expr: !DIExpression())
!691 = distinct !DIGlobalVariable(scope: null, file: !657, line: 1, type: !650, isLocal: true, isDefinition: true)
!692 = !DIGlobalVariableExpression(var: !693, expr: !DIExpression())
!693 = distinct !DIGlobalVariable(scope: null, file: !657, line: 1, type: !650, isLocal: true, isDefinition: true)
!694 = !DIGlobalVariableExpression(var: !695, expr: !DIExpression())
!695 = distinct !DIGlobalVariable(scope: null, file: !657, line: 1, type: !650, isLocal: true, isDefinition: true)
!696 = !DIGlobalVariableExpression(var: !697, expr: !DIExpression())
!697 = distinct !DIGlobalVariable(scope: null, file: !657, line: 1, type: !650, isLocal: true, isDefinition: true)
!698 = !DIGlobalVariableExpression(var: !699, expr: !DIExpression())
!699 = distinct !DIGlobalVariable(scope: null, file: !657, line: 1, type: !650, isLocal: true, isDefinition: true)
!700 = !DIGlobalVariableExpression(var: !701, expr: !DIExpression())
!701 = distinct !DIGlobalVariable(scope: null, file: !657, line: 1, type: !650, isLocal: true, isDefinition: true)
!702 = !DIGlobalVariableExpression(var: !703, expr: !DIExpression())
!703 = distinct !DIGlobalVariable(scope: null, file: !657, line: 1, type: !650, isLocal: true, isDefinition: true)
!704 = !DIGlobalVariableExpression(var: !705, expr: !DIExpression())
!705 = distinct !DIGlobalVariable(scope: null, file: !657, line: 1, type: !650, isLocal: true, isDefinition: true)
!706 = distinct !DICompileUnit(language: DW_LANG_C99, file: !147, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !707)
!707 = !{!708, !714}
!708 = !DIGlobalVariableExpression(var: !709, expr: !DIExpression())
!709 = distinct !DIGlobalVariable(name: "unicode/utf8.first", linkageName: "unicode/utf8.first", scope: !710, file: !710, line: 71, type: !711, isLocal: false, isDefinition: true, align: 8)
!710 = !DIFile(filename: "utf8.go", directory: "/usr/local/lib/tinygo/src/unicode/utf8")
!711 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 2048, align: 8, elements: !712)
!712 = !{!713}
!713 = !DISubrange(count: 256, lowerBound: 0)
!714 = !DIGlobalVariableExpression(var: !715, expr: !DIExpression())
!715 = distinct !DIGlobalVariable(name: "unicode/utf8.acceptRanges", linkageName: "unicode/utf8.acceptRanges", scope: !710, file: !710, line: 100, type: !716, isLocal: false, isDefinition: true, align: 8)
!716 = !DICompositeType(tag: DW_TAG_array_type, baseType: !717, size: 256, align: 8, elements: !209)
!717 = !DIDerivedType(tag: DW_TAG_typedef, name: "unicode/utf8.acceptRange", baseType: !718)
!718 = !DICompositeType(tag: DW_TAG_structure_type, size: 16, align: 8, elements: !719)
!719 = !{!720, !721}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "lo", baseType: !45, size: 8, align: 8)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "hi", baseType: !45, size: 8, align: 8, offset: 8)
!722 = distinct !DICompileUnit(language: DW_LANG_C99, file: !147, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !723)
!723 = !{!724, !727, !734, !736, !738, !740, !742, !744, !746, !748, !750, !752, !754, !756, !758, !761, !763, !766, !768, !770, !772, !780, !782, !784, !786, !788, !790, !792, !794, !796, !798, !800, !802, !804, !806, !808, !810, !812, !814, !816, !818, !820, !822, !824, !826, !828, !830, !832, !834, !836, !838, !840, !842, !844, !846, !848, !850, !852, !854, !856, !858, !860, !873, !891, !896, !898, !900, !902, !904, !906, !908, !910, !922, !928, !936, !940, !945, !947, !949, !951, !960, !962, !970, !979, !981, !983, !985, !987, !989, !991, !993, !995, !997, !999, !1001, !1003, !1005, !1007, !1009, !1011, !1013, !1016, !1018, !1020, !1022, !1024, !1026, !1028, !1034, !1040, !1046, !1048, !1050, !1052, !1054, !1056, !1058, !1060, !1062, !1064, !1066, !1068, !1070, !1072, !1074, !1076, !1078, !1080, !1082, !1084, !1086, !1088, !1090, !1092, !1094, !1096, !1098, !1100, !1102, !1104, !1106, !1111, !1116, !1121, !1126, !1128, !1130, !1132, !1137, !1139, !1141, !1143, !1145, !1147, !1152, !1154, !1156, !1158, !1160, !1162, !1164, !1166, !1168, !1170, !1172, !1174, !1176, !1178, !1180, !1182, !1184, !1186, !1188, !1190, !1192, !1194, !1196, !1198, !1200, !1202, !1204, !1206, !1208, !1213, !1215, !1217, !1219, !1221, !1223, !1228, !1230, !1232, !1234, !1236, !1238, !1243, !1245, !1247, !1252, !1254, !1256, !1258, !1260, !1262, !1264, !1266, !1268, !1270, !1272, !1274, !1276, !1281, !1283, !1285, !1287, !1289, !1291, !1293, !1295, !1297, !1302, !1304, !1309, !1314, !1316, !1318, !1320, !1325, !1327, !1329, !1331, !1333, !1338, !1340, !1342, !1344, !1346, !1348, !1353, !1355, !1360, !1362, !1364, !1366, !1368, !1370, !1372, !1374, !1376, !1378, !1380, !1382, !1387, !1389, !1394, !1396, !1398, !1400, !1402, !1405, !1407, !1409, !1411, !1413, !1415, !1417, !1419, !1421, !1423, !1428, !1430, !1432, !1434, !1436, !1438, !1440, !1442, !1444, !1446, !1449}
!724 = !DIGlobalVariableExpression(var: !725, expr: !DIExpression())
!725 = distinct !DIGlobalVariable(scope: null, file: !726, line: 393, type: !375, isLocal: true, isDefinition: true)
!726 = !DIFile(filename: "type.go", directory: "/usr/local/lib/tinygo/src/internal/reflectlite")
!727 = !DIGlobalVariableExpression(var: !728, expr: !DIExpression())
!728 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeElem", linkageName: "internal/reflectlite.errTypeElem", scope: !726, file: !726, line: 393, type: !729, isLocal: false, isDefinition: true, align: 64)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64, align: 64, dwarfAddressSpace: 0)
!730 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.TypeError", baseType: !731)
!731 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !732)
!732 = !{!733}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "Method", baseType: !363, size: 128, align: 64)
!734 = !DIGlobalVariableExpression(var: !735, expr: !DIExpression())
!735 = distinct !DIGlobalVariable(scope: null, file: !726, line: 394, type: !203, isLocal: true, isDefinition: true)
!736 = !DIGlobalVariableExpression(var: !737, expr: !DIExpression())
!737 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeKey", linkageName: "internal/reflectlite.errTypeKey", scope: !726, file: !726, line: 394, type: !729, isLocal: false, isDefinition: true, align: 64)
!738 = !DIGlobalVariableExpression(var: !739, expr: !DIExpression())
!739 = distinct !DIGlobalVariable(scope: null, file: !726, line: 395, type: !445, isLocal: true, isDefinition: true)
!740 = !DIGlobalVariableExpression(var: !741, expr: !DIExpression())
!741 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeField", linkageName: "internal/reflectlite.errTypeField", scope: !726, file: !726, line: 395, type: !729, isLocal: false, isDefinition: true, align: 64)
!742 = !DIGlobalVariableExpression(var: !743, expr: !DIExpression())
!743 = distinct !DIGlobalVariable(scope: null, file: !726, line: 396, type: !375, isLocal: true, isDefinition: true)
!744 = !DIGlobalVariableExpression(var: !745, expr: !DIExpression())
!745 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeBits", linkageName: "internal/reflectlite.errTypeBits", scope: !726, file: !726, line: 396, type: !729, isLocal: false, isDefinition: true, align: 64)
!746 = !DIGlobalVariableExpression(var: !747, expr: !DIExpression())
!747 = distinct !DIGlobalVariable(scope: null, file: !726, line: 397, type: !203, isLocal: true, isDefinition: true)
!748 = !DIGlobalVariableExpression(var: !749, expr: !DIExpression())
!749 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeLen", linkageName: "internal/reflectlite.errTypeLen", scope: !726, file: !726, line: 397, type: !729, isLocal: false, isDefinition: true, align: 64)
!750 = !DIGlobalVariableExpression(var: !751, expr: !DIExpression())
!751 = distinct !DIGlobalVariable(scope: null, file: !726, line: 398, type: !466, isLocal: true, isDefinition: true)
!752 = !DIGlobalVariableExpression(var: !753, expr: !DIExpression())
!753 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeNumField", linkageName: "internal/reflectlite.errTypeNumField", scope: !726, file: !726, line: 398, type: !729, isLocal: false, isDefinition: true, align: 64)
!754 = !DIGlobalVariableExpression(var: !755, expr: !DIExpression())
!755 = distinct !DIGlobalVariable(scope: null, file: !726, line: 399, type: !106, isLocal: true, isDefinition: true)
!756 = !DIGlobalVariableExpression(var: !757, expr: !DIExpression())
!757 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeChanDir", linkageName: "internal/reflectlite.errTypeChanDir", scope: !726, file: !726, line: 399, type: !729, isLocal: false, isDefinition: true, align: 64)
!758 = !DIGlobalVariableExpression(var: !759, expr: !DIExpression())
!759 = distinct !DIGlobalVariable(scope: null, file: !726, line: 400, type: !760, isLocal: true, isDefinition: true)
!760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 88, align: 8, elements: !625)
!761 = !DIGlobalVariableExpression(var: !762, expr: !DIExpression())
!762 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeFieldByName", linkageName: "internal/reflectlite.errTypeFieldByName", scope: !726, file: !726, line: 400, type: !729, isLocal: false, isDefinition: true, align: 64)
!763 = !DIGlobalVariableExpression(var: !764, expr: !DIExpression())
!764 = distinct !DIGlobalVariable(scope: null, file: !726, line: 401, type: !765, isLocal: true, isDefinition: true)
!765 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 96, align: 8, elements: !598)
!766 = !DIGlobalVariableExpression(var: !767, expr: !DIExpression())
!767 = distinct !DIGlobalVariable(name: "internal/reflectlite.errTypeFieldByIndex", linkageName: "internal/reflectlite.errTypeFieldByIndex", scope: !726, file: !726, line: 401, type: !729, isLocal: false, isDefinition: true, align: 64)
!768 = !DIGlobalVariableExpression(var: !769, expr: !DIExpression())
!769 = distinct !DIGlobalVariable(name: "type *uint8", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!770 = !DIGlobalVariableExpression(var: !771, expr: !DIExpression())
!771 = distinct !DIGlobalVariable(name: "type uint8", scope: !87, file: !87, line: 1, type: !88, isLocal: false, isDefinition: true, align: 64)
!772 = !DIGlobalVariableExpression(var: !773, expr: !DIExpression())
!773 = distinct !DIGlobalVariable(name: "internal/reflectlite.uint8Type", linkageName: "internal/reflectlite.uint8Type", scope: !774, file: !774, line: 956, type: !775, isLocal: false, isDefinition: true, align: 64)
!774 = !DIFile(filename: "value.go", directory: "/usr/local/lib/tinygo/src/internal/reflectlite")
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64, align: 64, dwarfAddressSpace: 0)
!776 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.RawType", baseType: !777)
!777 = !DICompositeType(tag: DW_TAG_structure_type, size: 8, align: 8, elements: !778)
!778 = !{!779}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "meta", baseType: !45, size: 8, align: 8)
!780 = !DIGlobalVariableExpression(var: !781, expr: !DIExpression())
!781 = distinct !DIGlobalVariable(name: "type *internal/reflectlite.visit", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!782 = !DIGlobalVariableExpression(var: !783, expr: !DIExpression())
!783 = distinct !DIGlobalVariable(name: "type *struct{a1 unsafe.Pointer; a2 unsafe.Pointer; typ *internal/reflectlite.RawType}", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!784 = !DIGlobalVariableExpression(var: !785, expr: !DIExpression())
!785 = distinct !DIGlobalVariable(name: "type *unsafe.Pointer", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!786 = !DIGlobalVariableExpression(var: !787, expr: !DIExpression())
!787 = distinct !DIGlobalVariable(name: "type unsafe.Pointer", scope: !87, file: !87, line: 1, type: !88, isLocal: false, isDefinition: true, align: 64)
!788 = !DIGlobalVariableExpression(var: !789, expr: !DIExpression())
!789 = distinct !DIGlobalVariable(name: "reflect/types.signature:Align:func:{}{basic:int}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!790 = !DIGlobalVariableExpression(var: !791, expr: !DIExpression())
!791 = distinct !DIGlobalVariable(name: "reflect/types.signature:AssignableTo:func:{named:internal/reflectlite.Type}{basic:bool}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!792 = !DIGlobalVariableExpression(var: !793, expr: !DIExpression())
!793 = distinct !DIGlobalVariable(name: "reflect/types.signature:Bits:func:{}{basic:int}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!794 = !DIGlobalVariableExpression(var: !795, expr: !DIExpression())
!795 = distinct !DIGlobalVariable(name: "reflect/types.signature:ChanDir:func:{}{named:internal/reflectlite.ChanDir}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!796 = !DIGlobalVariableExpression(var: !797, expr: !DIExpression())
!797 = distinct !DIGlobalVariable(name: "reflect/types.signature:Comparable:func:{}{basic:bool}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!798 = !DIGlobalVariableExpression(var: !799, expr: !DIExpression())
!799 = distinct !DIGlobalVariable(name: "reflect/types.signature:Elem:func:{}{named:internal/reflectlite.Type}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!800 = !DIGlobalVariableExpression(var: !801, expr: !DIExpression())
!801 = distinct !DIGlobalVariable(name: "reflect/types.signature:Field:func:{basic:int}{named:internal/reflectlite.StructField}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!802 = !DIGlobalVariableExpression(var: !803, expr: !DIExpression())
!803 = distinct !DIGlobalVariable(name: "reflect/types.signature:FieldAlign:func:{}{basic:int}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!804 = !DIGlobalVariableExpression(var: !805, expr: !DIExpression())
!805 = distinct !DIGlobalVariable(name: "reflect/types.signature:FieldByIndex:func:{slice:basic:int}{named:internal/reflectlite.StructField}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!806 = !DIGlobalVariableExpression(var: !807, expr: !DIExpression())
!807 = distinct !DIGlobalVariable(name: "reflect/types.signature:FieldByName:func:{basic:string}{named:internal/reflectlite.StructField,basic:bool}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!808 = !DIGlobalVariableExpression(var: !809, expr: !DIExpression())
!809 = distinct !DIGlobalVariable(name: "reflect/types.signature:FieldByNameFunc:func:{func:{basic:string}{basic:bool}}{named:internal/reflectlite.StructField,basic:bool}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!810 = !DIGlobalVariableExpression(var: !811, expr: !DIExpression())
!811 = distinct !DIGlobalVariable(name: "reflect/types.signature:Implements:func:{named:internal/reflectlite.Type}{basic:bool}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!812 = !DIGlobalVariableExpression(var: !813, expr: !DIExpression())
!813 = distinct !DIGlobalVariable(name: "reflect/types.signature:Key:func:{}{named:internal/reflectlite.Type}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!814 = !DIGlobalVariableExpression(var: !815, expr: !DIExpression())
!815 = distinct !DIGlobalVariable(name: "reflect/types.signature:Kind:func:{}{named:internal/reflectlite.Kind}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!816 = !DIGlobalVariableExpression(var: !817, expr: !DIExpression())
!817 = distinct !DIGlobalVariable(name: "reflect/types.signature:Len:func:{}{basic:int}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!818 = !DIGlobalVariableExpression(var: !819, expr: !DIExpression())
!819 = distinct !DIGlobalVariable(name: "reflect/types.signature:Name:func:{}{basic:string}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!820 = !DIGlobalVariableExpression(var: !821, expr: !DIExpression())
!821 = distinct !DIGlobalVariable(name: "reflect/types.signature:NumField:func:{}{basic:int}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!822 = !DIGlobalVariableExpression(var: !823, expr: !DIExpression())
!823 = distinct !DIGlobalVariable(name: "reflect/types.signature:NumMethod:func:{}{basic:int}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!824 = !DIGlobalVariableExpression(var: !825, expr: !DIExpression())
!825 = distinct !DIGlobalVariable(name: "reflect/types.signature:OverflowComplex:func:{basic:complex128}{basic:bool}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!826 = !DIGlobalVariableExpression(var: !827, expr: !DIExpression())
!827 = distinct !DIGlobalVariable(name: "reflect/types.signature:OverflowFloat:func:{basic:float64}{basic:bool}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!828 = !DIGlobalVariableExpression(var: !829, expr: !DIExpression())
!829 = distinct !DIGlobalVariable(name: "reflect/types.signature:OverflowInt:func:{basic:int64}{basic:bool}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!830 = !DIGlobalVariableExpression(var: !831, expr: !DIExpression())
!831 = distinct !DIGlobalVariable(name: "reflect/types.signature:OverflowUint:func:{basic:uint64}{basic:bool}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!832 = !DIGlobalVariableExpression(var: !833, expr: !DIExpression())
!833 = distinct !DIGlobalVariable(name: "reflect/types.signature:PkgPath:func:{}{basic:string}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!834 = !DIGlobalVariableExpression(var: !835, expr: !DIExpression())
!835 = distinct !DIGlobalVariable(name: "reflect/types.signature:Size:func:{}{basic:uintptr}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!836 = !DIGlobalVariableExpression(var: !837, expr: !DIExpression())
!837 = distinct !DIGlobalVariable(name: "reflect/types.signature:String:func:{}{basic:string}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!838 = !DIGlobalVariableExpression(var: !839, expr: !DIExpression())
!839 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.elem:func:{}{pointer:named:internal/reflectlite.RawType}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!840 = !DIGlobalVariableExpression(var: !841, expr: !DIExpression())
!841 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.gcLayout:func:{}{basic:unsafe.Pointer}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!842 = !DIGlobalVariableExpression(var: !843, expr: !DIExpression())
!843 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.isBinary:func:{}{basic:bool}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!844 = !DIGlobalVariableExpression(var: !845, expr: !DIExpression())
!845 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.isNamed:func:{}{basic:bool}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!846 = !DIGlobalVariableExpression(var: !847, expr: !DIExpression())
!847 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.key:func:{}{pointer:named:internal/reflectlite.RawType}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!848 = !DIGlobalVariableExpression(var: !849, expr: !DIExpression())
!849 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.name:func:{}{basic:string}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!850 = !DIGlobalVariableExpression(var: !851, expr: !DIExpression())
!851 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.ptrtag:func:{}{basic:uintptr}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!852 = !DIGlobalVariableExpression(var: !853, expr: !DIExpression())
!853 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.rawField:func:{basic:int}{named:internal/reflectlite.rawStructField}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!854 = !DIGlobalVariableExpression(var: !855, expr: !DIExpression())
!855 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.rawFieldByNameFunc:func:{func:{basic:string}{basic:bool}}{named:internal/reflectlite.rawStructField,slice:basic:int,basic:bool}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!856 = !DIGlobalVariableExpression(var: !857, expr: !DIExpression())
!857 = distinct !DIGlobalVariable(name: "reflect/types.signature:internal/reflectlite.underlying:func:{}{pointer:named:internal/reflectlite.RawType}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!858 = !DIGlobalVariableExpression(var: !859, expr: !DIExpression())
!859 = distinct !DIGlobalVariable(name: "type *struct{meta uint8}", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!860 = !DIGlobalVariableExpression(var: !861, expr: !DIExpression())
!861 = distinct !DIGlobalVariable(name: "type struct{meta uint8}", scope: !87, file: !87, line: 1, type: !862, isLocal: false, isDefinition: true, align: 64)
!862 = !DICompositeType(tag: DW_TAG_structure_type, size: 384, align: 64, elements: !863)
!863 = !{!90, !97, !92, !864, !865, !866, !867}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "pkgpath", baseType: !9, size: 64, align: 64, offset: 128)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "size", baseType: !43, size: 32, align: 32, offset: 192)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "numFields", baseType: !98, size: 16, align: 16, offset: 224)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "fields", baseType: !868, size: 128, align: 64, offset: 256)
!868 = !DICompositeType(tag: DW_TAG_array_type, baseType: !869, size: 128, align: 64, elements: !197)
!869 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.structField", baseType: !870)
!870 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !871)
!871 = !{!505, !872}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "data", baseType: !366, size: 64, align: 64, offset: 64)
!873 = !DIGlobalVariableExpression(var: !874, expr: !DIExpression())
!874 = distinct !DIGlobalVariable(name: "type internal/reflectlite.RawType", scope: !87, file: !87, line: 1, type: !875, isLocal: false, isDefinition: true, align: 64)
!875 = !DICompositeType(tag: DW_TAG_structure_type, size: 832, align: 64, elements: !876)
!876 = !{!877, !878, !879, !880, !881, !882, !883, !889}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "methodSet", baseType: !9, size: 64, align: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "kind", baseType: !91, size: 8, align: 8, offset: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "numMethods", baseType: !98, size: 16, align: 16, offset: 80)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "ptrTo", baseType: !9, size: 64, align: 64, offset: 128)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "underlying", baseType: !9, size: 64, align: 64, offset: 192)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "pkgpath", baseType: !9, size: 64, align: 64, offset: 256)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !884, size: 320, align: 64, offset: 320)
!884 = !DICompositeType(tag: DW_TAG_structure_type, size: 320, align: 64, elements: !885)
!885 = !{!886, !887}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "length", baseType: !21, size: 64, align: 64)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !888, size: 256, align: 64, offset: 64)
!888 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 256, align: 64, elements: !376)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "name", baseType: !890, size: 160, align: 8, offset: 640)
!890 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 160, align: 8, elements: !68)
!891 = !DIGlobalVariableExpression(var: !892, expr: !DIExpression())
!892 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1, type: !893, isLocal: true, isDefinition: true)
!893 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 224, align: 8, elements: !894)
!894 = !{!895}
!895 = !DISubrange(count: 28, lowerBound: 0)
!896 = !DIGlobalVariableExpression(var: !897, expr: !DIExpression())
!897 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1, type: !650, isLocal: true, isDefinition: true)
!898 = !DIGlobalVariableExpression(var: !899, expr: !DIExpression())
!899 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1, type: !893, isLocal: true, isDefinition: true)
!900 = !DIGlobalVariableExpression(var: !901, expr: !DIExpression())
!901 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1, type: !478, isLocal: true, isDefinition: true)
!902 = !DIGlobalVariableExpression(var: !903, expr: !DIExpression())
!903 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1, type: !893, isLocal: true, isDefinition: true)
!904 = !DIGlobalVariableExpression(var: !905, expr: !DIExpression())
!905 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1, type: !760, isLocal: true, isDefinition: true)
!906 = !DIGlobalVariableExpression(var: !907, expr: !DIExpression())
!907 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1, type: !893, isLocal: true, isDefinition: true)
!908 = !DIGlobalVariableExpression(var: !909, expr: !DIExpression())
!909 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1, type: !765, isLocal: true, isDefinition: true)
!910 = !DIGlobalVariableExpression(var: !911, expr: !DIExpression())
!911 = distinct !DIGlobalVariable(name: "type *internal/reflectlite.RawType", scope: !87, file: !87, line: 1, type: !912, isLocal: false, isDefinition: true, align: 64)
!912 = !DICompositeType(tag: DW_TAG_structure_type, size: 2496, align: 64, elements: !913)
!913 = !{!877, !878, !879, !914, !915}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "elementType", baseType: !9, size: 64, align: 64, offset: 128)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !916, size: 2304, align: 64, offset: 192)
!916 = !DICompositeType(tag: DW_TAG_structure_type, size: 2304, align: 64, elements: !917)
!917 = !{!886, !918}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !919, size: 2240, align: 64, offset: 64)
!919 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 2240, align: 64, elements: !920)
!920 = !{!921}
!921 = !DISubrange(count: 35, lowerBound: 0)
!922 = !DIGlobalVariableExpression(var: !923, expr: !DIExpression())
!923 = distinct !DIGlobalVariable(name: "type struct{a1 unsafe.Pointer; a2 unsafe.Pointer; typ *internal/reflectlite.RawType}", scope: !87, file: !87, line: 1, type: !924, isLocal: false, isDefinition: true, align: 64)
!924 = !DICompositeType(tag: DW_TAG_structure_type, size: 640, align: 64, elements: !925)
!925 = !{!90, !97, !92, !864, !865, !866, !926}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "fields", baseType: !927, size: 384, align: 64, offset: 256)
!927 = !DICompositeType(tag: DW_TAG_array_type, baseType: !869, size: 384, align: 64, elements: !204)
!928 = !DIGlobalVariableExpression(var: !929, expr: !DIExpression())
!929 = distinct !DIGlobalVariable(name: "type internal/reflectlite.visit", scope: !87, file: !87, line: 1, type: !930, isLocal: false, isDefinition: true, align: 64)
!930 = !DICompositeType(tag: DW_TAG_structure_type, size: 448, align: 64, elements: !931)
!931 = !{!90, !97, !92, !932, !933, !934}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "underlying", baseType: !9, size: 64, align: 64, offset: 128)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "pkgpath", baseType: !9, size: 64, align: 64, offset: 192)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "name", baseType: !935, size: 144, align: 8, offset: 256)
!935 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 144, align: 8, elements: !127)
!936 = !DIGlobalVariableExpression(var: !937, expr: !DIExpression())
!937 = distinct !DIGlobalVariable(name: "internal/reflectlite.errSyntax", linkageName: "internal/reflectlite.errSyntax", scope: !938, file: !938, line: 12, type: !939, isLocal: false, isDefinition: true, align: 8)
!938 = !DIFile(filename: "strconv.go", directory: "/usr/local/lib/tinygo/src/internal/reflectlite")
!939 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/reflectlite.badSyntax", baseType: !14)
!940 = !DIGlobalVariableExpression(var: !941, expr: !DIExpression())
!941 = distinct !DIGlobalVariable(scope: null, file: !938, line: 17, type: !942, isLocal: true, isDefinition: true)
!942 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 112, align: 8, elements: !943)
!943 = !{!944}
!944 = !DISubrange(count: 14, lowerBound: 0)
!945 = !DIGlobalVariableExpression(var: !946, expr: !DIExpression())
!946 = distinct !DIGlobalVariable(name: "reflect/types.signature:Error:func:{}{basic:string}", scope: !87, file: !87, line: 1, type: !45, isLocal: false, isDefinition: true, align: 8)
!947 = !DIGlobalVariableExpression(var: !948, expr: !DIExpression())
!948 = distinct !DIGlobalVariable(scope: null, file: !938, line: 1, type: !55, isLocal: true, isDefinition: true)
!949 = !DIGlobalVariableExpression(var: !950, expr: !DIExpression())
!950 = distinct !DIGlobalVariable(scope: null, file: !938, line: 1, type: !445, isLocal: true, isDefinition: true)
!951 = !DIGlobalVariableExpression(var: !952, expr: !DIExpression())
!952 = distinct !DIGlobalVariable(name: "type *internal/reflectlite.badSyntax", scope: !87, file: !87, line: 1, type: !953, isLocal: false, isDefinition: true, align: 64)
!953 = !DICompositeType(tag: DW_TAG_structure_type, size: 320, align: 64, elements: !954)
!954 = !{!877, !878, !879, !914, !955}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !956, size: 128, align: 64, offset: 192)
!956 = !DICompositeType(tag: DW_TAG_structure_type, size: 128, align: 64, elements: !957)
!957 = !{!886, !958}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !959, size: 64, align: 64, offset: 64)
!959 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 64, align: 64, elements: !197)
!960 = !DIGlobalVariableExpression(var: !961, expr: !DIExpression())
!961 = distinct !DIGlobalVariable(name: "type *struct{}", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!962 = !DIGlobalVariableExpression(var: !963, expr: !DIExpression())
!963 = distinct !DIGlobalVariable(name: "type struct{}", scope: !87, file: !87, line: 1, type: !964, isLocal: false, isDefinition: true, align: 64)
!964 = !DICompositeType(tag: DW_TAG_structure_type, size: 256, align: 64, elements: !965)
!965 = !{!90, !97, !92, !864, !865, !866, !966}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "fields", baseType: !967, align: 64, offset: 256)
!967 = !DICompositeType(tag: DW_TAG_array_type, baseType: !869, align: 64, elements: !968)
!968 = !{!969}
!969 = !DISubrange(count: 0, lowerBound: 0)
!970 = !DIGlobalVariableExpression(var: !971, expr: !DIExpression())
!971 = distinct !DIGlobalVariable(name: "type internal/reflectlite.badSyntax", scope: !87, file: !87, line: 1, type: !972, isLocal: false, isDefinition: true, align: 64)
!972 = !DICompositeType(tag: DW_TAG_structure_type, size: 640, align: 64, elements: !973)
!973 = !{!877, !878, !879, !880, !881, !882, !974, !975}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "methods", baseType: !956, size: 128, align: 64, offset: 320)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "name", baseType: !976, size: 176, align: 8, offset: 448)
!976 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 176, align: 8, elements: !977)
!977 = !{!978}
!978 = !DISubrange(count: 22, lowerBound: 0)
!979 = !DIGlobalVariableExpression(var: !980, expr: !DIExpression())
!980 = distinct !DIGlobalVariable(scope: null, file: !938, line: 250, type: !116, isLocal: true, isDefinition: true)
!981 = !DIGlobalVariableExpression(var: !982, expr: !DIExpression())
!982 = distinct !DIGlobalVariable(scope: null, file: !938, line: 251, type: !650, isLocal: true, isDefinition: true)
!983 = !DIGlobalVariableExpression(var: !984, expr: !DIExpression())
!984 = distinct !DIGlobalVariable(scope: null, file: !938, line: 252, type: !650, isLocal: true, isDefinition: true)
!985 = !DIGlobalVariableExpression(var: !986, expr: !DIExpression())
!986 = distinct !DIGlobalVariable(scope: null, file: !938, line: 278, type: !116, isLocal: true, isDefinition: true)
!987 = !DIGlobalVariableExpression(var: !988, expr: !DIExpression())
!988 = distinct !DIGlobalVariable(scope: null, file: !938, line: 280, type: !116, isLocal: true, isDefinition: true)
!989 = !DIGlobalVariableExpression(var: !990, expr: !DIExpression())
!990 = distinct !DIGlobalVariable(scope: null, file: !938, line: 282, type: !116, isLocal: true, isDefinition: true)
!991 = !DIGlobalVariableExpression(var: !992, expr: !DIExpression())
!992 = distinct !DIGlobalVariable(scope: null, file: !938, line: 284, type: !116, isLocal: true, isDefinition: true)
!993 = !DIGlobalVariableExpression(var: !994, expr: !DIExpression())
!994 = distinct !DIGlobalVariable(scope: null, file: !938, line: 286, type: !116, isLocal: true, isDefinition: true)
!995 = !DIGlobalVariableExpression(var: !996, expr: !DIExpression())
!996 = distinct !DIGlobalVariable(scope: null, file: !938, line: 288, type: !116, isLocal: true, isDefinition: true)
!997 = !DIGlobalVariableExpression(var: !998, expr: !DIExpression())
!998 = distinct !DIGlobalVariable(scope: null, file: !938, line: 290, type: !116, isLocal: true, isDefinition: true)
!999 = !DIGlobalVariableExpression(var: !1000, expr: !DIExpression())
!1000 = distinct !DIGlobalVariable(scope: null, file: !938, line: 294, type: !116, isLocal: true, isDefinition: true)
!1001 = !DIGlobalVariableExpression(var: !1002, expr: !DIExpression())
!1002 = distinct !DIGlobalVariable(scope: null, file: !938, line: 295, type: !650, isLocal: true, isDefinition: true)
!1003 = !DIGlobalVariableExpression(var: !1004, expr: !DIExpression())
!1004 = distinct !DIGlobalVariable(scope: null, file: !938, line: 296, type: !650, isLocal: true, isDefinition: true)
!1005 = !DIGlobalVariableExpression(var: !1006, expr: !DIExpression())
!1006 = distinct !DIGlobalVariable(scope: null, file: !938, line: 301, type: !116, isLocal: true, isDefinition: true)
!1007 = !DIGlobalVariableExpression(var: !1008, expr: !DIExpression())
!1008 = distinct !DIGlobalVariable(scope: null, file: !938, line: 303, type: !650, isLocal: true, isDefinition: true)
!1009 = !DIGlobalVariableExpression(var: !1010, expr: !DIExpression())
!1010 = distinct !DIGlobalVariable(scope: null, file: !938, line: 306, type: !116, isLocal: true, isDefinition: true)
!1011 = !DIGlobalVariableExpression(var: !1012, expr: !DIExpression())
!1012 = distinct !DIGlobalVariable(scope: null, file: !938, line: 308, type: !650, isLocal: true, isDefinition: true)
!1013 = !DIGlobalVariableExpression(var: !1014, expr: !DIExpression())
!1014 = distinct !DIGlobalVariable(scope: null, file: !1015, line: 16, type: !106, isLocal: true, isDefinition: true)
!1015 = !DIFile(filename: "swapper.go", directory: "/usr/local/lib/tinygo/src/internal/reflectlite")
!1016 = !DIGlobalVariableExpression(var: !1017, expr: !DIExpression())
!1017 = distinct !DIGlobalVariable(name: "type *struct{Method string; Kind internal/reflectlite.Kind}", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!1018 = !DIGlobalVariableExpression(var: !1019, expr: !DIExpression())
!1019 = distinct !DIGlobalVariable(name: "type *string", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!1020 = !DIGlobalVariableExpression(var: !1021, expr: !DIExpression())
!1021 = distinct !DIGlobalVariable(name: "type string", scope: !87, file: !87, line: 1, type: !88, isLocal: false, isDefinition: true, align: 64)
!1022 = !DIGlobalVariableExpression(var: !1023, expr: !DIExpression())
!1023 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1, type: !406, isLocal: true, isDefinition: true)
!1024 = !DIGlobalVariableExpression(var: !1025, expr: !DIExpression())
!1025 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1, type: !429, isLocal: true, isDefinition: true)
!1026 = !DIGlobalVariableExpression(var: !1027, expr: !DIExpression())
!1027 = distinct !DIGlobalVariable(name: "type *internal/reflectlite.Kind", scope: !87, file: !87, line: 1, type: !953, isLocal: false, isDefinition: true, align: 64)
!1028 = !DIGlobalVariableExpression(var: !1029, expr: !DIExpression())
!1029 = distinct !DIGlobalVariable(name: "type internal/reflectlite.Kind", scope: !87, file: !87, line: 1, type: !1030, isLocal: false, isDefinition: true, align: 64)
!1030 = !DICompositeType(tag: DW_TAG_structure_type, size: 640, align: 64, elements: !1031)
!1031 = !{!877, !878, !879, !880, !881, !882, !974, !1032}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "name", baseType: !1033, size: 136, align: 8, offset: 448)
!1033 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 136, align: 8, elements: !75)
!1034 = !DIGlobalVariableExpression(var: !1035, expr: !DIExpression())
!1035 = distinct !DIGlobalVariable(name: "type struct{Method string; Kind internal/reflectlite.Kind}", scope: !87, file: !87, line: 1, type: !1036, isLocal: false, isDefinition: true, align: 64)
!1036 = !DICompositeType(tag: DW_TAG_structure_type, size: 512, align: 64, elements: !1037)
!1037 = !{!90, !97, !92, !864, !865, !866, !1038}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "fields", baseType: !1039, size: 256, align: 64, offset: 256)
!1039 = !DICompositeType(tag: DW_TAG_array_type, baseType: !869, size: 256, align: 64, elements: !117)
!1040 = !DIGlobalVariableExpression(var: !1041, expr: !DIExpression())
!1041 = distinct !DIGlobalVariable(name: "type internal/reflectlite.ValueError", scope: !87, file: !87, line: 1, type: !1042, isLocal: false, isDefinition: true, align: 64)
!1042 = !DICompositeType(tag: DW_TAG_structure_type, size: 448, align: 64, elements: !1043)
!1043 = !{!90, !97, !92, !932, !933, !1044}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "name", baseType: !1045, size: 184, align: 8, offset: 256)
!1045 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 184, align: 8, elements: !122)
!1046 = !DIGlobalVariableExpression(var: !1047, expr: !DIExpression())
!1047 = distinct !DIGlobalVariable(name: "type *internal/reflectlite.ValueError", scope: !87, file: !87, line: 1, type: !953, isLocal: false, isDefinition: true, align: 64)
!1048 = !DIGlobalVariableExpression(var: !1049, expr: !DIExpression())
!1049 = distinct !DIGlobalVariable(scope: null, file: !1015, line: 1, type: !380, isLocal: true, isDefinition: true)
!1050 = !DIGlobalVariableExpression(var: !1051, expr: !DIExpression())
!1051 = distinct !DIGlobalVariable(scope: null, file: !726, line: 60, type: !106, isLocal: true, isDefinition: true)
!1052 = !DIGlobalVariableExpression(var: !1053, expr: !DIExpression())
!1053 = distinct !DIGlobalVariable(scope: null, file: !726, line: 62, type: !375, isLocal: true, isDefinition: true)
!1054 = !DIGlobalVariableExpression(var: !1055, expr: !DIExpression())
!1055 = distinct !DIGlobalVariable(scope: null, file: !726, line: 64, type: !203, isLocal: true, isDefinition: true)
!1056 = !DIGlobalVariableExpression(var: !1057, expr: !DIExpression())
!1057 = distinct !DIGlobalVariable(scope: null, file: !726, line: 66, type: !375, isLocal: true, isDefinition: true)
!1058 = !DIGlobalVariableExpression(var: !1059, expr: !DIExpression())
!1059 = distinct !DIGlobalVariable(scope: null, file: !726, line: 68, type: !445, isLocal: true, isDefinition: true)
!1060 = !DIGlobalVariableExpression(var: !1061, expr: !DIExpression())
!1061 = distinct !DIGlobalVariable(scope: null, file: !726, line: 70, type: !445, isLocal: true, isDefinition: true)
!1062 = !DIGlobalVariableExpression(var: !1063, expr: !DIExpression())
!1063 = distinct !DIGlobalVariable(scope: null, file: !726, line: 72, type: !445, isLocal: true, isDefinition: true)
!1064 = !DIGlobalVariableExpression(var: !1065, expr: !DIExpression())
!1065 = distinct !DIGlobalVariable(scope: null, file: !726, line: 74, type: !375, isLocal: true, isDefinition: true)
!1066 = !DIGlobalVariableExpression(var: !1067, expr: !DIExpression())
!1067 = distinct !DIGlobalVariable(scope: null, file: !726, line: 76, type: !445, isLocal: true, isDefinition: true)
!1068 = !DIGlobalVariableExpression(var: !1069, expr: !DIExpression())
!1069 = distinct !DIGlobalVariable(scope: null, file: !726, line: 78, type: !429, isLocal: true, isDefinition: true)
!1070 = !DIGlobalVariableExpression(var: !1071, expr: !DIExpression())
!1071 = distinct !DIGlobalVariable(scope: null, file: !726, line: 80, type: !429, isLocal: true, isDefinition: true)
!1072 = !DIGlobalVariableExpression(var: !1073, expr: !DIExpression())
!1073 = distinct !DIGlobalVariable(scope: null, file: !726, line: 82, type: !429, isLocal: true, isDefinition: true)
!1074 = !DIGlobalVariableExpression(var: !1075, expr: !DIExpression())
!1075 = distinct !DIGlobalVariable(scope: null, file: !726, line: 84, type: !106, isLocal: true, isDefinition: true)
!1076 = !DIGlobalVariableExpression(var: !1077, expr: !DIExpression())
!1077 = distinct !DIGlobalVariable(scope: null, file: !726, line: 86, type: !106, isLocal: true, isDefinition: true)
!1078 = !DIGlobalVariableExpression(var: !1079, expr: !DIExpression())
!1079 = distinct !DIGlobalVariable(scope: null, file: !726, line: 88, type: !106, isLocal: true, isDefinition: true)
!1080 = !DIGlobalVariableExpression(var: !1081, expr: !DIExpression())
!1081 = distinct !DIGlobalVariable(scope: null, file: !726, line: 90, type: !424, isLocal: true, isDefinition: true)
!1082 = !DIGlobalVariableExpression(var: !1083, expr: !DIExpression())
!1083 = distinct !DIGlobalVariable(scope: null, file: !726, line: 92, type: !436, isLocal: true, isDefinition: true)
!1084 = !DIGlobalVariableExpression(var: !1085, expr: !DIExpression())
!1085 = distinct !DIGlobalVariable(scope: null, file: !726, line: 94, type: !429, isLocal: true, isDefinition: true)
!1086 = !DIGlobalVariableExpression(var: !1087, expr: !DIExpression())
!1087 = distinct !DIGlobalVariable(scope: null, file: !726, line: 96, type: !942, isLocal: true, isDefinition: true)
!1088 = !DIGlobalVariableExpression(var: !1089, expr: !DIExpression())
!1089 = distinct !DIGlobalVariable(scope: null, file: !726, line: 98, type: !375, isLocal: true, isDefinition: true)
!1090 = !DIGlobalVariableExpression(var: !1091, expr: !DIExpression())
!1091 = distinct !DIGlobalVariable(scope: null, file: !726, line: 100, type: !424, isLocal: true, isDefinition: true)
!1092 = !DIGlobalVariableExpression(var: !1093, expr: !DIExpression())
!1093 = distinct !DIGlobalVariable(scope: null, file: !726, line: 102, type: !203, isLocal: true, isDefinition: true)
!1094 = !DIGlobalVariableExpression(var: !1095, expr: !DIExpression())
!1095 = distinct !DIGlobalVariable(scope: null, file: !726, line: 104, type: !445, isLocal: true, isDefinition: true)
!1096 = !DIGlobalVariableExpression(var: !1097, expr: !DIExpression())
!1097 = distinct !DIGlobalVariable(scope: null, file: !726, line: 106, type: !445, isLocal: true, isDefinition: true)
!1098 = !DIGlobalVariableExpression(var: !1099, expr: !DIExpression())
!1099 = distinct !DIGlobalVariable(scope: null, file: !726, line: 108, type: !375, isLocal: true, isDefinition: true)
!1100 = !DIGlobalVariableExpression(var: !1101, expr: !DIExpression())
!1101 = distinct !DIGlobalVariable(scope: null, file: !726, line: 110, type: !203, isLocal: true, isDefinition: true)
!1102 = !DIGlobalVariableExpression(var: !1103, expr: !DIExpression())
!1103 = distinct !DIGlobalVariable(scope: null, file: !726, line: 112, type: !429, isLocal: true, isDefinition: true)
!1104 = !DIGlobalVariableExpression(var: !1105, expr: !DIExpression())
!1105 = distinct !DIGlobalVariable(scope: null, file: !726, line: 114, type: !375, isLocal: true, isDefinition: true)
!1106 = !DIGlobalVariableExpression(var: !1107, expr: !DIExpression())
!1107 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1, type: !1108, isLocal: true, isDefinition: true)
!1108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 352, align: 8, elements: !1109)
!1109 = !{!1110}
!1110 = !DISubrange(count: 44, lowerBound: 0)
!1111 = !DIGlobalVariableExpression(var: !1112, expr: !DIExpression())
!1112 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1, type: !1113, isLocal: true, isDefinition: true)
!1113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 320, align: 8, elements: !1114)
!1114 = !{!1115}
!1115 = !DISubrange(count: 40, lowerBound: 0)
!1116 = !DIGlobalVariableExpression(var: !1117, expr: !DIExpression())
!1117 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1, type: !1118, isLocal: true, isDefinition: true)
!1118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 288, align: 8, elements: !1119)
!1119 = !{!1120}
!1120 = !DISubrange(count: 36, lowerBound: 0)
!1121 = !DIGlobalVariableExpression(var: !1122, expr: !DIExpression())
!1122 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1, type: !1123, isLocal: true, isDefinition: true)
!1123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 304, align: 8, elements: !1124)
!1124 = !{!1125}
!1125 = !DISubrange(count: 38, lowerBound: 0)
!1126 = !DIGlobalVariableExpression(var: !1127, expr: !DIExpression())
!1127 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1, type: !399, isLocal: true, isDefinition: true)
!1128 = !DIGlobalVariableExpression(var: !1129, expr: !DIExpression())
!1129 = distinct !DIGlobalVariable(name: "type *struct{Method string}", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!1130 = !DIGlobalVariableExpression(var: !1131, expr: !DIExpression())
!1131 = distinct !DIGlobalVariable(name: "type struct{Method string}", scope: !87, file: !87, line: 1, type: !862, isLocal: false, isDefinition: true, align: 64)
!1132 = !DIGlobalVariableExpression(var: !1133, expr: !DIExpression())
!1133 = distinct !DIGlobalVariable(name: "type internal/reflectlite.TypeError", scope: !87, file: !87, line: 1, type: !1134, isLocal: false, isDefinition: true, align: 64)
!1134 = !DICompositeType(tag: DW_TAG_structure_type, size: 448, align: 64, elements: !1135)
!1135 = !{!90, !97, !92, !932, !933, !1136}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "name", baseType: !976, size: 176, align: 8, offset: 256)
!1137 = !DIGlobalVariableExpression(var: !1138, expr: !DIExpression())
!1138 = distinct !DIGlobalVariable(name: "type *internal/reflectlite.TypeError", scope: !87, file: !87, line: 1, type: !953, isLocal: false, isDefinition: true, align: 64)
!1139 = !DIGlobalVariableExpression(var: !1140, expr: !DIExpression())
!1140 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1059, type: !650, isLocal: true, isDefinition: true)
!1141 = !DIGlobalVariableExpression(var: !1142, expr: !DIExpression())
!1142 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1, type: !153, isLocal: true, isDefinition: true)
!1143 = !DIGlobalVariableExpression(var: !1144, expr: !DIExpression())
!1144 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1, type: !74, isLocal: true, isDefinition: true)
!1145 = !DIGlobalVariableExpression(var: !1146, expr: !DIExpression())
!1146 = distinct !DIGlobalVariable(scope: null, file: !726, line: 965, type: !106, isLocal: true, isDefinition: true)
!1147 = !DIGlobalVariableExpression(var: !1148, expr: !DIExpression())
!1148 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1, type: !1149, isLocal: true, isDefinition: true)
!1149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 216, align: 8, elements: !1150)
!1150 = !{!1151}
!1151 = !DISubrange(count: 27, lowerBound: 0)
!1152 = !DIGlobalVariableExpression(var: !1153, expr: !DIExpression())
!1153 = distinct !DIGlobalVariable(scope: null, file: !726, line: 329, type: !106, isLocal: true, isDefinition: true)
!1154 = !DIGlobalVariableExpression(var: !1155, expr: !DIExpression())
!1155 = distinct !DIGlobalVariable(scope: null, file: !726, line: 331, type: !106, isLocal: true, isDefinition: true)
!1156 = !DIGlobalVariableExpression(var: !1157, expr: !DIExpression())
!1157 = distinct !DIGlobalVariable(scope: null, file: !726, line: 338, type: !429, isLocal: true, isDefinition: true)
!1158 = !DIGlobalVariableExpression(var: !1159, expr: !DIExpression())
!1159 = distinct !DIGlobalVariable(scope: null, file: !726, line: 338, type: !196, isLocal: true, isDefinition: true)
!1160 = !DIGlobalVariableExpression(var: !1161, expr: !DIExpression())
!1161 = distinct !DIGlobalVariable(scope: null, file: !726, line: 340, type: !445, isLocal: true, isDefinition: true)
!1162 = !DIGlobalVariableExpression(var: !1163, expr: !DIExpression())
!1163 = distinct !DIGlobalVariable(scope: null, file: !726, line: 344, type: !196, isLocal: true, isDefinition: true)
!1164 = !DIGlobalVariableExpression(var: !1165, expr: !DIExpression())
!1165 = distinct !DIGlobalVariable(scope: null, file: !726, line: 346, type: !116, isLocal: true, isDefinition: true)
!1166 = !DIGlobalVariableExpression(var: !1167, expr: !DIExpression())
!1167 = distinct !DIGlobalVariable(scope: null, file: !726, line: 348, type: !196, isLocal: true, isDefinition: true)
!1168 = !DIGlobalVariableExpression(var: !1169, expr: !DIExpression())
!1169 = distinct !DIGlobalVariable(scope: null, file: !726, line: 348, type: !196, isLocal: true, isDefinition: true)
!1170 = !DIGlobalVariableExpression(var: !1171, expr: !DIExpression())
!1171 = distinct !DIGlobalVariable(scope: null, file: !726, line: 350, type: !375, isLocal: true, isDefinition: true)
!1172 = !DIGlobalVariableExpression(var: !1173, expr: !DIExpression())
!1173 = distinct !DIGlobalVariable(scope: null, file: !726, line: 350, type: !196, isLocal: true, isDefinition: true)
!1174 = !DIGlobalVariableExpression(var: !1175, expr: !DIExpression())
!1175 = distinct !DIGlobalVariable(scope: null, file: !726, line: 354, type: !424, isLocal: true, isDefinition: true)
!1176 = !DIGlobalVariableExpression(var: !1177, expr: !DIExpression())
!1177 = distinct !DIGlobalVariable(scope: null, file: !726, line: 356, type: !466, isLocal: true, isDefinition: true)
!1178 = !DIGlobalVariableExpression(var: !1179, expr: !DIExpression())
!1179 = distinct !DIGlobalVariable(scope: null, file: !726, line: 359, type: !196, isLocal: true, isDefinition: true)
!1180 = !DIGlobalVariableExpression(var: !1181, expr: !DIExpression())
!1181 = distinct !DIGlobalVariable(scope: null, file: !726, line: 359, type: !196, isLocal: true, isDefinition: true)
!1182 = !DIGlobalVariableExpression(var: !1183, expr: !DIExpression())
!1183 = distinct !DIGlobalVariable(scope: null, file: !726, line: 361, type: !196, isLocal: true, isDefinition: true)
!1184 = !DIGlobalVariableExpression(var: !1185, expr: !DIExpression())
!1185 = distinct !DIGlobalVariable(scope: null, file: !726, line: 365, type: !196, isLocal: true, isDefinition: true)
!1186 = !DIGlobalVariableExpression(var: !1187, expr: !DIExpression())
!1187 = distinct !DIGlobalVariable(scope: null, file: !726, line: 368, type: !116, isLocal: true, isDefinition: true)
!1188 = !DIGlobalVariableExpression(var: !1189, expr: !DIExpression())
!1189 = distinct !DIGlobalVariable(scope: null, file: !726, line: 372, type: !765, isLocal: true, isDefinition: true)
!1190 = !DIGlobalVariableExpression(var: !1191, expr: !DIExpression())
!1191 = distinct !DIGlobalVariable(scope: null, file: !726, line: 356, type: !466, isLocal: true, isDefinition: true)
!1192 = !DIGlobalVariableExpression(var: !1193, expr: !DIExpression())
!1193 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1, type: !380, isLocal: true, isDefinition: true)
!1194 = !DIGlobalVariableExpression(var: !1195, expr: !DIExpression())
!1195 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1, type: !399, isLocal: true, isDefinition: true)
!1196 = !DIGlobalVariableExpression(var: !1197, expr: !DIExpression())
!1197 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1212, type: !55, isLocal: true, isDefinition: true)
!1198 = !DIGlobalVariableExpression(var: !1199, expr: !DIExpression())
!1199 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1212, type: !208, isLocal: true, isDefinition: true)
!1200 = !DIGlobalVariableExpression(var: !1201, expr: !DIExpression())
!1201 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1, type: !399, isLocal: true, isDefinition: true)
!1202 = !DIGlobalVariableExpression(var: !1203, expr: !DIExpression())
!1203 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1, type: !399, isLocal: true, isDefinition: true)
!1204 = !DIGlobalVariableExpression(var: !1205, expr: !DIExpression())
!1205 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1, type: !380, isLocal: true, isDefinition: true)
!1206 = !DIGlobalVariableExpression(var: !1207, expr: !DIExpression())
!1207 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1, type: !55, isLocal: true, isDefinition: true)
!1208 = !DIGlobalVariableExpression(var: !1209, expr: !DIExpression())
!1209 = distinct !DIGlobalVariable(scope: null, file: !726, line: 1, type: !1210, isLocal: true, isDefinition: true)
!1210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 248, align: 8, elements: !1211)
!1211 = !{!1212}
!1212 = !DISubrange(count: 31, lowerBound: 0)
!1213 = !DIGlobalVariableExpression(var: !1214, expr: !DIExpression())
!1214 = distinct !DIGlobalVariable(scope: null, file: !774, line: 1, type: !181, isLocal: true, isDefinition: true)
!1215 = !DIGlobalVariableExpression(var: !1216, expr: !DIExpression())
!1216 = distinct !DIGlobalVariable(scope: null, file: !774, line: 441, type: !375, isLocal: true, isDefinition: true)
!1217 = !DIGlobalVariableExpression(var: !1218, expr: !DIExpression())
!1218 = distinct !DIGlobalVariable(scope: null, file: !774, line: 650, type: !445, isLocal: true, isDefinition: true)
!1219 = !DIGlobalVariableExpression(var: !1220, expr: !DIExpression())
!1220 = distinct !DIGlobalVariable(scope: null, file: !774, line: 658, type: !445, isLocal: true, isDefinition: true)
!1221 = !DIGlobalVariableExpression(var: !1222, expr: !DIExpression())
!1222 = distinct !DIGlobalVariable(scope: null, file: !774, line: 667, type: !445, isLocal: true, isDefinition: true)
!1223 = !DIGlobalVariableExpression(var: !1224, expr: !DIExpression())
!1224 = distinct !DIGlobalVariable(scope: null, file: !774, line: 1, type: !1225, isLocal: true, isDefinition: true)
!1225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 296, align: 8, elements: !1226)
!1226 = !{!1227}
!1227 = !DISubrange(count: 37, lowerBound: 0)
!1228 = !DIGlobalVariableExpression(var: !1229, expr: !DIExpression())
!1229 = distinct !DIGlobalVariable(scope: null, file: !774, line: 1, type: !171, isLocal: true, isDefinition: true)
!1230 = !DIGlobalVariableExpression(var: !1231, expr: !DIExpression())
!1231 = distinct !DIGlobalVariable(scope: null, file: !774, line: 824, type: !203, isLocal: true, isDefinition: true)
!1232 = !DIGlobalVariableExpression(var: !1233, expr: !DIExpression())
!1233 = distinct !DIGlobalVariable(scope: null, file: !774, line: 843, type: !445, isLocal: true, isDefinition: true)
!1234 = !DIGlobalVariableExpression(var: !1235, expr: !DIExpression())
!1235 = distinct !DIGlobalVariable(scope: null, file: !774, line: 630, type: !106, isLocal: true, isDefinition: true)
!1236 = !DIGlobalVariableExpression(var: !1237, expr: !DIExpression())
!1237 = distinct !DIGlobalVariable(scope: null, file: !774, line: 1425, type: !1225, isLocal: true, isDefinition: true)
!1238 = !DIGlobalVariableExpression(var: !1239, expr: !DIExpression())
!1239 = distinct !DIGlobalVariable(scope: null, file: !774, line: 1425, type: !1240, isLocal: true, isDefinition: true)
!1240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 232, align: 8, elements: !1241)
!1241 = !{!1242}
!1242 = !DISubrange(count: 29, lowerBound: 0)
!1243 = !DIGlobalVariableExpression(var: !1244, expr: !DIExpression())
!1244 = distinct !DIGlobalVariable(scope: null, file: !774, line: 875, type: !375, isLocal: true, isDefinition: true)
!1245 = !DIGlobalVariableExpression(var: !1246, expr: !DIExpression())
!1246 = distinct !DIGlobalVariable(scope: null, file: !774, line: 407, type: !1118, isLocal: true, isDefinition: true)
!1247 = !DIGlobalVariableExpression(var: !1248, expr: !DIExpression())
!1248 = distinct !DIGlobalVariable(scope: null, file: !774, line: 407, type: !1249, isLocal: true, isDefinition: true)
!1249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 152, align: 8, elements: !1250)
!1250 = !{!1251}
!1251 = !DISubrange(count: 19, lowerBound: 0)
!1252 = !DIGlobalVariableExpression(var: !1253, expr: !DIExpression())
!1253 = distinct !DIGlobalVariable(scope: null, file: !774, line: 1, type: !380, isLocal: true, isDefinition: true)
!1254 = !DIGlobalVariableExpression(var: !1255, expr: !DIExpression())
!1255 = distinct !DIGlobalVariable(scope: null, file: !774, line: 882, type: !445, isLocal: true, isDefinition: true)
!1256 = !DIGlobalVariableExpression(var: !1257, expr: !DIExpression())
!1257 = distinct !DIGlobalVariable(scope: null, file: !774, line: 2067, type: !765, isLocal: true, isDefinition: true)
!1258 = !DIGlobalVariableExpression(var: !1259, expr: !DIExpression())
!1259 = distinct !DIGlobalVariable(scope: null, file: !774, line: 1, type: !176, isLocal: true, isDefinition: true)
!1260 = !DIGlobalVariableExpression(var: !1261, expr: !DIExpression())
!1261 = distinct !DIGlobalVariable(scope: null, file: !774, line: 2085, type: !650, isLocal: true, isDefinition: true)
!1262 = !DIGlobalVariableExpression(var: !1263, expr: !DIExpression())
!1263 = distinct !DIGlobalVariable(scope: null, file: !774, line: 2090, type: !760, isLocal: true, isDefinition: true)
!1264 = !DIGlobalVariableExpression(var: !1265, expr: !DIExpression())
!1265 = distinct !DIGlobalVariable(scope: null, file: !774, line: 2101, type: !760, isLocal: true, isDefinition: true)
!1266 = !DIGlobalVariableExpression(var: !1267, expr: !DIExpression())
!1267 = distinct !DIGlobalVariable(scope: null, file: !774, line: 598, type: !445, isLocal: true, isDefinition: true)
!1268 = !DIGlobalVariableExpression(var: !1269, expr: !DIExpression())
!1269 = distinct !DIGlobalVariable(scope: null, file: !774, line: 573, type: !445, isLocal: true, isDefinition: true)
!1270 = !DIGlobalVariableExpression(var: !1271, expr: !DIExpression())
!1271 = distinct !DIGlobalVariable(scope: null, file: !774, line: 1, type: !1240, isLocal: true, isDefinition: true)
!1272 = !DIGlobalVariableExpression(var: !1273, expr: !DIExpression())
!1273 = distinct !DIGlobalVariable(scope: null, file: !774, line: 1957, type: !375, isLocal: true, isDefinition: true)
!1274 = !DIGlobalVariableExpression(var: !1275, expr: !DIExpression())
!1275 = distinct !DIGlobalVariable(scope: null, file: !774, line: 1, type: !380, isLocal: true, isDefinition: true)
!1276 = !DIGlobalVariableExpression(var: !1277, expr: !DIExpression())
!1277 = distinct !DIGlobalVariable(scope: null, file: !774, line: 1, type: !1278, isLocal: true, isDefinition: true)
!1278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 272, align: 8, elements: !1279)
!1279 = !{!1280}
!1280 = !DISubrange(count: 34, lowerBound: 0)
!1281 = !DIGlobalVariableExpression(var: !1282, expr: !DIExpression())
!1282 = distinct !DIGlobalVariable(scope: null, file: !774, line: 1041, type: !445, isLocal: true, isDefinition: true)
!1283 = !DIGlobalVariableExpression(var: !1284, expr: !DIExpression())
!1284 = distinct !DIGlobalVariable(scope: null, file: !774, line: 488, type: !203, isLocal: true, isDefinition: true)
!1285 = !DIGlobalVariableExpression(var: !1286, expr: !DIExpression())
!1286 = distinct !DIGlobalVariable(scope: null, file: !774, line: 1, type: !1225, isLocal: true, isDefinition: true)
!1287 = !DIGlobalVariableExpression(var: !1288, expr: !DIExpression())
!1288 = distinct !DIGlobalVariable(scope: null, file: !774, line: 247, type: !445, isLocal: true, isDefinition: true)
!1289 = !DIGlobalVariableExpression(var: !1290, expr: !DIExpression())
!1290 = distinct !DIGlobalVariable(scope: null, file: !774, line: 201, type: !196, isLocal: true, isDefinition: true)
!1291 = !DIGlobalVariableExpression(var: !1292, expr: !DIExpression())
!1292 = distinct !DIGlobalVariable(scope: null, file: !774, line: 209, type: !67, isLocal: true, isDefinition: true)
!1293 = !DIGlobalVariableExpression(var: !1294, expr: !DIExpression())
!1294 = distinct !DIGlobalVariable(scope: null, file: !774, line: 806, type: !203, isLocal: true, isDefinition: true)
!1295 = !DIGlobalVariableExpression(var: !1296, expr: !DIExpression())
!1296 = distinct !DIGlobalVariable(scope: null, file: !774, line: 1117, type: !466, isLocal: true, isDefinition: true)
!1297 = !DIGlobalVariableExpression(var: !1298, expr: !DIExpression())
!1298 = distinct !DIGlobalVariable(scope: null, file: !774, line: 1, type: !1299, isLocal: true, isDefinition: true)
!1299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 400, align: 8, elements: !1300)
!1300 = !{!1301}
!1301 = !DISubrange(count: 50, lowerBound: 0)
!1302 = !DIGlobalVariableExpression(var: !1303, expr: !DIExpression())
!1303 = distinct !DIGlobalVariable(scope: null, file: !774, line: 1074, type: !106, isLocal: true, isDefinition: true)
!1304 = !DIGlobalVariableExpression(var: !1305, expr: !DIExpression())
!1305 = distinct !DIGlobalVariable(scope: null, file: !774, line: 1, type: !1306, isLocal: true, isDefinition: true)
!1306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 312, align: 8, elements: !1307)
!1307 = !{!1308}
!1308 = !DISubrange(count: 39, lowerBound: 0)
!1309 = !DIGlobalVariableExpression(var: !1310, expr: !DIExpression())
!1310 = distinct !DIGlobalVariable(scope: null, file: !774, line: 1, type: !1311, isLocal: true, isDefinition: true)
!1311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 360, align: 8, elements: !1312)
!1312 = !{!1313}
!1313 = !DISubrange(count: 45, lowerBound: 0)
!1314 = !DIGlobalVariableExpression(var: !1315, expr: !DIExpression())
!1315 = distinct !DIGlobalVariable(scope: null, file: !774, line: 1047, type: !121, isLocal: true, isDefinition: true)
!1316 = !DIGlobalVariableExpression(var: !1317, expr: !DIExpression())
!1317 = distinct !DIGlobalVariable(scope: null, file: !774, line: 1062, type: !1149, isLocal: true, isDefinition: true)
!1318 = !DIGlobalVariableExpression(var: !1319, expr: !DIExpression())
!1319 = distinct !DIGlobalVariable(scope: null, file: !774, line: 1398, type: !406, isLocal: true, isDefinition: true)
!1320 = !DIGlobalVariableExpression(var: !1321, expr: !DIExpression())
!1321 = distinct !DIGlobalVariable(scope: null, file: !774, line: 1411, type: !1322, isLocal: true, isDefinition: true)
!1322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 208, align: 8, elements: !1323)
!1323 = !{!1324}
!1324 = !DISubrange(count: 26, lowerBound: 0)
!1325 = !DIGlobalVariableExpression(var: !1326, expr: !DIExpression())
!1326 = distinct !DIGlobalVariable(scope: null, file: !774, line: 1, type: !1225, isLocal: true, isDefinition: true)
!1327 = !DIGlobalVariableExpression(var: !1328, expr: !DIExpression())
!1328 = distinct !DIGlobalVariable(scope: null, file: !774, line: 1237, type: !380, isLocal: true, isDefinition: true)
!1329 = !DIGlobalVariableExpression(var: !1330, expr: !DIExpression())
!1330 = distinct !DIGlobalVariable(scope: null, file: !774, line: 1237, type: !893, isLocal: true, isDefinition: true)
!1331 = !DIGlobalVariableExpression(var: !1332, expr: !DIExpression())
!1332 = distinct !DIGlobalVariable(scope: null, file: !774, line: 1275, type: !106, isLocal: true, isDefinition: true)
!1333 = !DIGlobalVariableExpression(var: !1334, expr: !DIExpression())
!1334 = distinct !DIGlobalVariable(scope: null, file: !774, line: 1, type: !1335, isLocal: true, isDefinition: true)
!1335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 344, align: 8, elements: !1336)
!1336 = !{!1337}
!1337 = !DISubrange(count: 43, lowerBound: 0)
!1338 = !DIGlobalVariableExpression(var: !1339, expr: !DIExpression())
!1339 = distinct !DIGlobalVariable(scope: null, file: !774, line: 1, type: !1306, isLocal: true, isDefinition: true)
!1340 = !DIGlobalVariableExpression(var: !1341, expr: !DIExpression())
!1341 = distinct !DIGlobalVariable(scope: null, file: !774, line: 1341, type: !436, isLocal: true, isDefinition: true)
!1342 = !DIGlobalVariableExpression(var: !1343, expr: !DIExpression())
!1343 = distinct !DIGlobalVariable(scope: null, file: !774, line: 1328, type: !466, isLocal: true, isDefinition: true)
!1344 = !DIGlobalVariableExpression(var: !1345, expr: !DIExpression())
!1345 = distinct !DIGlobalVariable(scope: null, file: !774, line: 1294, type: !429, isLocal: true, isDefinition: true)
!1346 = !DIGlobalVariableExpression(var: !1347, expr: !DIExpression())
!1347 = distinct !DIGlobalVariable(scope: null, file: !774, line: 1373, type: !67, isLocal: true, isDefinition: true)
!1348 = !DIGlobalVariableExpression(var: !1349, expr: !DIExpression())
!1349 = distinct !DIGlobalVariable(scope: null, file: !774, line: 1, type: !1350, isLocal: true, isDefinition: true)
!1350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 376, align: 8, elements: !1351)
!1351 = !{!1352}
!1352 = !DISubrange(count: 47, lowerBound: 0)
!1353 = !DIGlobalVariableExpression(var: !1354, expr: !DIExpression())
!1354 = distinct !DIGlobalVariable(scope: null, file: !774, line: 1987, type: !760, isLocal: true, isDefinition: true)
!1355 = !DIGlobalVariableExpression(var: !1356, expr: !DIExpression())
!1356 = distinct !DIGlobalVariable(scope: null, file: !774, line: 1, type: !1357, isLocal: true, isDefinition: true)
!1357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 440, align: 8, elements: !1358)
!1358 = !{!1359}
!1359 = !DISubrange(count: 55, lowerBound: 0)
!1360 = !DIGlobalVariableExpression(var: !1361, expr: !DIExpression())
!1361 = distinct !DIGlobalVariable(scope: null, file: !774, line: 1, type: !153, isLocal: true, isDefinition: true)
!1362 = !DIGlobalVariableExpression(var: !1363, expr: !DIExpression())
!1363 = distinct !DIGlobalVariable(scope: null, file: !774, line: 1352, type: !424, isLocal: true, isDefinition: true)
!1364 = !DIGlobalVariableExpression(var: !1365, expr: !DIExpression())
!1365 = distinct !DIGlobalVariable(scope: null, file: !774, line: 1315, type: !106, isLocal: true, isDefinition: true)
!1366 = !DIGlobalVariableExpression(var: !1367, expr: !DIExpression())
!1367 = distinct !DIGlobalVariable(scope: null, file: !774, line: 734, type: !445, isLocal: true, isDefinition: true)
!1368 = !DIGlobalVariableExpression(var: !1369, expr: !DIExpression())
!1369 = distinct !DIGlobalVariable(scope: null, file: !774, line: 1, type: !1306, isLocal: true, isDefinition: true)
!1370 = !DIGlobalVariableExpression(var: !1371, expr: !DIExpression())
!1371 = distinct !DIGlobalVariable(scope: null, file: !774, line: 642, type: !196, isLocal: true, isDefinition: true)
!1372 = !DIGlobalVariableExpression(var: !1373, expr: !DIExpression())
!1373 = distinct !DIGlobalVariable(scope: null, file: !774, line: 642, type: !106, isLocal: true, isDefinition: true)
!1374 = !DIGlobalVariableExpression(var: !1375, expr: !DIExpression())
!1375 = distinct !DIGlobalVariable(scope: null, file: !774, line: 541, type: !375, isLocal: true, isDefinition: true)
!1376 = !DIGlobalVariableExpression(var: !1377, expr: !DIExpression())
!1377 = distinct !DIGlobalVariable(scope: null, file: !774, line: 273, type: !478, isLocal: true, isDefinition: true)
!1378 = !DIGlobalVariableExpression(var: !1379, expr: !DIExpression())
!1379 = distinct !DIGlobalVariable(scope: null, file: !774, line: 1, type: !380, isLocal: true, isDefinition: true)
!1380 = !DIGlobalVariableExpression(var: !1381, expr: !DIExpression())
!1381 = distinct !DIGlobalVariable(scope: null, file: !774, line: 1, type: !55, isLocal: true, isDefinition: true)
!1382 = !DIGlobalVariableExpression(var: !1383, expr: !DIExpression())
!1383 = distinct !DIGlobalVariable(scope: null, file: !774, line: 1, type: !1384, isLocal: true, isDefinition: true)
!1384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 368, align: 8, elements: !1385)
!1385 = !{!1386}
!1386 = !DISubrange(count: 46, lowerBound: 0)
!1387 = !DIGlobalVariableExpression(var: !1388, expr: !DIExpression())
!1388 = distinct !DIGlobalVariable(scope: null, file: !774, line: 1218, type: !466, isLocal: true, isDefinition: true)
!1389 = !DIGlobalVariableExpression(var: !1390, expr: !DIExpression())
!1390 = distinct !DIGlobalVariable(scope: null, file: !774, line: 1, type: !1391, isLocal: true, isDefinition: true)
!1391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 384, align: 8, elements: !1392)
!1392 = !{!1393}
!1393 = !DISubrange(count: 48, lowerBound: 0)
!1394 = !DIGlobalVariableExpression(var: !1395, expr: !DIExpression())
!1395 = distinct !DIGlobalVariable(scope: null, file: !774, line: 1, type: !893, isLocal: true, isDefinition: true)
!1396 = !DIGlobalVariableExpression(var: !1397, expr: !DIExpression())
!1397 = distinct !DIGlobalVariable(scope: null, file: !774, line: 1, type: !893, isLocal: true, isDefinition: true)
!1398 = !DIGlobalVariableExpression(var: !1399, expr: !DIExpression())
!1399 = distinct !DIGlobalVariable(scope: null, file: !774, line: 1, type: !1240, isLocal: true, isDefinition: true)
!1400 = !DIGlobalVariableExpression(var: !1401, expr: !DIExpression())
!1401 = distinct !DIGlobalVariable(scope: null, file: !774, line: 1, type: !1240, isLocal: true, isDefinition: true)
!1402 = !DIGlobalVariableExpression(var: !1403, expr: !DIExpression())
!1403 = distinct !DIGlobalVariable(scope: null, file: !774, line: 1, type: !1404, isLocal: true, isDefinition: true)
!1404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 280, align: 8, elements: !920)
!1405 = !DIGlobalVariableExpression(var: !1406, expr: !DIExpression())
!1406 = distinct !DIGlobalVariable(name: "internal/reflectlite.zerobuffer", linkageName: "internal/reflectlite.zerobuffer", scope: !774, file: !774, line: 1710, type: !9, isLocal: false, isDefinition: true, align: 64)
!1407 = !DIGlobalVariableExpression(var: !1408, expr: !DIExpression())
!1408 = distinct !DIGlobalVariable(scope: null, file: !774, line: 1716, type: !399, isLocal: true, isDefinition: true)
!1409 = !DIGlobalVariableExpression(var: !1410, expr: !DIExpression())
!1410 = distinct !DIGlobalVariable(scope: null, file: !774, line: 1716, type: !399, isLocal: true, isDefinition: true)
!1411 = !DIGlobalVariableExpression(var: !1412, expr: !DIExpression())
!1412 = distinct !DIGlobalVariable(scope: null, file: !774, line: 1791, type: !74, isLocal: true, isDefinition: true)
!1413 = !DIGlobalVariableExpression(var: !1414, expr: !DIExpression())
!1414 = distinct !DIGlobalVariable(scope: null, file: !774, line: 1791, type: !942, isLocal: true, isDefinition: true)
!1415 = !DIGlobalVariableExpression(var: !1416, expr: !DIExpression())
!1416 = distinct !DIGlobalVariable(scope: null, file: !774, line: 1793, type: !74, isLocal: true, isDefinition: true)
!1417 = !DIGlobalVariableExpression(var: !1418, expr: !DIExpression())
!1418 = distinct !DIGlobalVariable(scope: null, file: !774, line: 1793, type: !375, isLocal: true, isDefinition: true)
!1419 = !DIGlobalVariableExpression(var: !1420, expr: !DIExpression())
!1420 = distinct !DIGlobalVariable(scope: null, file: !774, line: 1793, type: !429, isLocal: true, isDefinition: true)
!1421 = !DIGlobalVariableExpression(var: !1422, expr: !DIExpression())
!1422 = distinct !DIGlobalVariable(scope: null, file: !774, line: 1, type: !1306, isLocal: true, isDefinition: true)
!1423 = !DIGlobalVariableExpression(var: !1424, expr: !DIExpression())
!1424 = distinct !DIGlobalVariable(scope: null, file: !774, line: 1825, type: !1425, isLocal: true, isDefinition: true)
!1425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 168, align: 8, elements: !1426)
!1426 = !{!1427}
!1427 = !DISubrange(count: 21, lowerBound: 0)
!1428 = !DIGlobalVariableExpression(var: !1429, expr: !DIExpression())
!1429 = distinct !DIGlobalVariable(scope: null, file: !774, line: 1825, type: !196, isLocal: true, isDefinition: true)
!1430 = !DIGlobalVariableExpression(var: !1431, expr: !DIExpression())
!1431 = distinct !DIGlobalVariable(scope: null, file: !774, line: 1, type: !171, isLocal: true, isDefinition: true)
!1432 = !DIGlobalVariableExpression(var: !1433, expr: !DIExpression())
!1433 = distinct !DIGlobalVariable(scope: null, file: !774, line: 1879, type: !760, isLocal: true, isDefinition: true)
!1434 = !DIGlobalVariableExpression(var: !1435, expr: !DIExpression())
!1435 = distinct !DIGlobalVariable(scope: null, file: !774, line: 1903, type: !429, isLocal: true, isDefinition: true)
!1436 = !DIGlobalVariableExpression(var: !1437, expr: !DIExpression())
!1437 = distinct !DIGlobalVariable(scope: null, file: !774, line: 1, type: !1278, isLocal: true, isDefinition: true)
!1438 = !DIGlobalVariableExpression(var: !1439, expr: !DIExpression())
!1439 = distinct !DIGlobalVariable(scope: null, file: !774, line: 1, type: !1210, isLocal: true, isDefinition: true)
!1440 = !DIGlobalVariableExpression(var: !1441, expr: !DIExpression())
!1441 = distinct !DIGlobalVariable(scope: null, file: !774, line: 2125, type: !106, isLocal: true, isDefinition: true)
!1442 = !DIGlobalVariableExpression(var: !1443, expr: !DIExpression())
!1443 = distinct !DIGlobalVariable(scope: null, file: !774, line: 1, type: !1335, isLocal: true, isDefinition: true)
!1444 = !DIGlobalVariableExpression(var: !1445, expr: !DIExpression())
!1445 = distinct !DIGlobalVariable(scope: null, file: !774, line: 1, type: !893, isLocal: true, isDefinition: true)
!1446 = !DIGlobalVariableExpression(var: !1447, expr: !DIExpression())
!1447 = distinct !DIGlobalVariable(scope: null, file: !1448, line: 1, type: !1149, isLocal: true, isDefinition: true)
!1448 = !DIFile(filename: "visiblefields.go", directory: "/usr/local/lib/tinygo/src/internal/reflectlite")
!1449 = !DIGlobalVariableExpression(var: !1450, expr: !DIExpression())
!1450 = distinct !DIGlobalVariable(scope: null, file: !1448, line: 1, type: !1113, isLocal: true, isDefinition: true)
!1451 = distinct !DICompileUnit(language: DW_LANG_C99, file: !147, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !1452)
!1452 = !{!1453, !1456, !1458, !1460}
!1453 = !DIGlobalVariableExpression(var: !1454, expr: !DIExpression())
!1454 = distinct !DIGlobalVariable(scope: null, file: !1455, line: 1, type: !765, isLocal: true, isDefinition: true)
!1455 = !DIFile(filename: "checkpoint.go", directory: "/usr/local/lib/tinygo/src/runtime/interrupt")
!1456 = !DIGlobalVariableExpression(var: !1457, expr: !DIExpression())
!1457 = distinct !DIGlobalVariable(name: "type *string", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!1458 = !DIGlobalVariableExpression(var: !1459, expr: !DIExpression())
!1459 = distinct !DIGlobalVariable(name: "type string", scope: !87, file: !87, line: 1, type: !88, isLocal: false, isDefinition: true, align: 64)
!1460 = !DIGlobalVariableExpression(var: !1461, expr: !DIExpression())
!1461 = distinct !DIGlobalVariable(scope: null, file: !1455, line: 1, type: !171, isLocal: true, isDefinition: true)
!1462 = distinct !DICompileUnit(language: DW_LANG_C99, file: !147, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !1463)
!1463 = !{!0, !50, !52, !1464, !1466, !1468, !1474, !1476, !1478, !58, !61, !1480, !65, !1482, !70, !1484, !1486, !1488, !1491, !72, !77, !83, !1493}
!1464 = !DIGlobalVariableExpression(var: !1465, expr: !DIExpression())
!1465 = distinct !DIGlobalVariable(name: "type *string", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!1466 = !DIGlobalVariableExpression(var: !1467, expr: !DIExpression())
!1467 = distinct !DIGlobalVariable(name: "type string", scope: !87, file: !87, line: 1, type: !88, isLocal: false, isDefinition: true, align: 64)
!1468 = !DIGlobalVariableExpression(var: !1469, expr: !DIExpression())
!1469 = distinct !DIGlobalVariable(scope: null, file: !1470, line: 1, type: !1471, isLocal: true, isDefinition: true)
!1470 = !DIFile(filename: "queue.go", directory: "/usr/local/lib/tinygo/src/internal/task")
!1471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 496, align: 8, elements: !1472)
!1472 = !{!1473}
!1473 = !DISubrange(count: 62, lowerBound: 0)
!1474 = !DIGlobalVariableExpression(var: !1475, expr: !DIExpression())
!1475 = distinct !DIGlobalVariable(scope: null, file: !1470, line: 1, type: !1471, isLocal: true, isDefinition: true)
!1476 = !DIGlobalVariableExpression(var: !1477, expr: !DIExpression())
!1477 = distinct !DIGlobalVariable(scope: null, file: !2, line: 89, type: !765, isLocal: true, isDefinition: true)
!1478 = !DIGlobalVariableExpression(var: !1479, expr: !DIExpression())
!1479 = distinct !DIGlobalVariable(name: "internal/task.goroutineID", linkageName: "internal/task.goroutineID", scope: !2, file: !2, line: 38, type: !21, isLocal: false, isDefinition: true, align: 64)
!1480 = !DIGlobalVariableExpression(var: !1481, expr: !DIExpression())
!1481 = distinct !DIGlobalVariable(scope: null, file: !2, line: 49, type: !111, isLocal: true, isDefinition: true)
!1482 = !DIGlobalVariableExpression(var: !1483, expr: !DIExpression())
!1483 = distinct !DIGlobalVariable(scope: null, file: !2, line: 77, type: !765, isLocal: true, isDefinition: true)
!1484 = !DIGlobalVariableExpression(var: !1485, expr: !DIExpression())
!1485 = distinct !DIGlobalVariable(scope: null, file: !2, line: 106, type: !765, isLocal: true, isDefinition: true)
!1486 = !DIGlobalVariableExpression(var: !1487, expr: !DIExpression())
!1487 = distinct !DIGlobalVariable(scope: null, file: !2, line: 106, type: !375, isLocal: true, isDefinition: true)
!1488 = !DIGlobalVariableExpression(var: !1489, expr: !DIExpression())
!1489 = distinct !DIGlobalVariable(scope: null, file: !2, line: 116, type: !1490, isLocal: true, isDefinition: true)
!1490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 176, align: 8, elements: !977)
!1491 = !DIGlobalVariableExpression(var: !1492, expr: !DIExpression())
!1492 = distinct !DIGlobalVariable(scope: null, file: !2, line: 127, type: !424, isLocal: true, isDefinition: true)
!1493 = !DIGlobalVariableExpression(var: !1494, expr: !DIExpression())
!1494 = distinct !DIGlobalVariable(name: "internal/task.stackScanLock", linkageName: "internal/task.stackScanLock", scope: !2, file: !2, line: 263, type: !63, isLocal: false, isDefinition: true, align: 32)
!1495 = distinct !DICompileUnit(language: DW_LANG_C99, file: !147, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1496 = distinct !DICompileUnit(language: DW_LANG_C99, file: !147, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !1497)
!1497 = !{!1498, !1501, !1503, !1506, !1508, !1511, !1513, !1515, !1517, !1519, !1522, !1524, !1526, !1529, !1532, !1535, !100, !1537, !1539, !1541, !1558, !1560, !1563, !1566, !103, !109, !114, !1568, !1570, !119, !1572, !124, !1574, !1576, !1578, !1580, !1582, !1584, !1586, !1591, !1594, !1596, !1598, !1600, !1603, !1605, !1607, !1609, !1611, !1613, !1615, !1617, !1619, !1621, !1623, !1625, !1627, !1629, !129, !1631, !132, !1633, !135, !1639, !1641, !1643, !1645, !137, !139, !1647, !1649, !1651, !1653, !1655, !141, !1657, !1659, !1661, !1663, !1681, !1683, !1685, !1705, !1707, !1709, !1711, !1713, !1715, !1717, !1719, !143, !1721, !1723, !1726, !1728}
!1498 = !DIGlobalVariableExpression(var: !1499, expr: !DIExpression())
!1499 = distinct !DIGlobalVariable(name: "runtime.xorshift32State", linkageName: "runtime.xorshift32State", scope: !1500, file: !1500, line: 32, type: !43, isLocal: false, isDefinition: true, align: 32)
!1500 = !DIFile(filename: "algorithm.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1501 = !DIGlobalVariableExpression(var: !1502, expr: !DIExpression())
!1502 = distinct !DIGlobalVariable(name: "runtime.xorshift64State", linkageName: "runtime.xorshift64State", scope: !1500, file: !1500, line: 52, type: !11, isLocal: false, isDefinition: true, align: 64)
!1503 = !DIGlobalVariableExpression(var: !1504, expr: !DIExpression())
!1504 = distinct !DIGlobalVariable(name: "runtime.inf", linkageName: "runtime.inf", scope: !1505, file: !1505, line: 9, type: !520, isLocal: false, isDefinition: true, align: 64)
!1505 = !DIFile(filename: "float.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1506 = !DIGlobalVariableExpression(var: !1507, expr: !DIExpression())
!1507 = distinct !DIGlobalVariable(name: "runtime.heapSize", linkageName: "runtime.heapSize", scope: !131, file: !131, line: 298, type: !21, isLocal: false, isDefinition: true, align: 64)
!1508 = !DIGlobalVariableExpression(var: !1509, expr: !DIExpression())
!1509 = distinct !DIGlobalVariable(scope: null, file: !1510, line: 210, type: !1490, isLocal: true, isDefinition: true)
!1510 = !DIFile(filename: "chan.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1511 = !DIGlobalVariableExpression(var: !1512, expr: !DIExpression())
!1512 = distinct !DIGlobalVariable(scope: null, file: !1510, line: 267, type: !1490, isLocal: true, isDefinition: true)
!1513 = !DIGlobalVariableExpression(var: !1514, expr: !DIExpression())
!1514 = distinct !DIGlobalVariable(scope: null, file: !1510, line: 348, type: !67, isLocal: true, isDefinition: true)
!1515 = !DIGlobalVariableExpression(var: !1516, expr: !DIExpression())
!1516 = distinct !DIGlobalVariable(scope: null, file: !1510, line: 358, type: !121, isLocal: true, isDefinition: true)
!1517 = !DIGlobalVariableExpression(var: !1518, expr: !DIExpression())
!1518 = distinct !DIGlobalVariable(name: "runtime.chanSelectLock", linkageName: "runtime.chanSelectLock", scope: !1510, file: !1510, line: 402, type: !63, isLocal: false, isDefinition: true, align: 32)
!1519 = !DIGlobalVariableExpression(var: !1520, expr: !DIExpression())
!1520 = distinct !DIGlobalVariable(scope: null, file: !1521, line: 1, type: !111, isLocal: true, isDefinition: true)
!1521 = !DIFile(filename: "debug.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1522 = !DIGlobalVariableExpression(var: !1523, expr: !DIExpression())
!1523 = distinct !DIGlobalVariable(name: "type *string", scope: !87, file: !87, line: 1, type: !95, isLocal: false, isDefinition: true, align: 64)
!1524 = !DIGlobalVariableExpression(var: !1525, expr: !DIExpression())
!1525 = distinct !DIGlobalVariable(name: "type string", scope: !87, file: !87, line: 1, type: !88, isLocal: false, isDefinition: true, align: 64)
!1526 = !DIGlobalVariableExpression(var: !1527, expr: !DIExpression())
!1527 = distinct !DIGlobalVariable(scope: null, file: !1528, line: 13, type: !106, isLocal: true, isDefinition: true)
!1528 = !DIFile(filename: "env.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1529 = !DIGlobalVariableExpression(var: !1530, expr: !DIExpression())
!1530 = distinct !DIGlobalVariable(name: "runtime.godebugUpdate", linkageName: "runtime.godebugUpdate", scope: !1531, file: !1531, line: 142, type: !349, isLocal: false, isDefinition: true, align: 64)
!1531 = !DIFile(filename: "runtime.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1532 = !DIGlobalVariableExpression(var: !1533, expr: !DIExpression())
!1533 = distinct !DIGlobalVariable(name: "runtime.buildVersion", linkageName: "runtime.buildVersion", scope: !1534, file: !1534, line: 10, type: !363, isLocal: false, isDefinition: true, align: 64)
!1534 = !DIFile(filename: "extern.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1535 = !DIGlobalVariableExpression(var: !1536, expr: !DIExpression())
!1536 = distinct !DIGlobalVariable(name: "runtime.zeroSizedAlloc", linkageName: "runtime.zeroSizedAlloc", scope: !102, file: !102, line: 30, type: !45, isLocal: false, isDefinition: true, align: 8)
!1537 = !DIGlobalVariableExpression(var: !1538, expr: !DIExpression())
!1538 = distinct !DIGlobalVariable(scope: null, file: !102, line: 61, type: !181, isLocal: true, isDefinition: true)
!1539 = !DIGlobalVariableExpression(var: !1540, expr: !DIExpression())
!1540 = distinct !DIGlobalVariable(scope: null, file: !102, line: 93, type: !74, isLocal: true, isDefinition: true)
!1541 = !DIGlobalVariableExpression(var: !1542, expr: !DIExpression())
!1542 = distinct !DIGlobalVariable(name: "runtime.gcMemStats", linkageName: "runtime.gcMemStats", scope: !102, file: !102, line: 112, type: !1543, isLocal: false, isDefinition: true, align: 64)
!1543 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.libgc_prof_stats", baseType: !1544)
!1544 = !DICompositeType(tag: DW_TAG_structure_type, size: 768, align: 64, elements: !1545)
!1545 = !{!1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "heapsize_full", baseType: !21, size: 64, align: 64)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "free_bytes_full", baseType: !21, size: 64, align: 64, offset: 64)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "unmapped_bytes", baseType: !21, size: 64, align: 64, offset: 128)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_allocd_since_gc", baseType: !21, size: 64, align: 64, offset: 192)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "allocd_bytes_before_gc", baseType: !21, size: 64, align: 64, offset: 256)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "non_gc_bytes", baseType: !21, size: 64, align: 64, offset: 320)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "gc_no", baseType: !21, size: 64, align: 64, offset: 384)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "markers_m1", baseType: !21, size: 64, align: 64, offset: 448)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_reclaimed_since_gc", baseType: !21, size: 64, align: 64, offset: 512)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "reclaimed_bytes_before_gc", baseType: !21, size: 64, align: 64, offset: 576)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "expl_freed_bytes_since_gc", baseType: !21, size: 64, align: 64, offset: 640)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "obtained_from_os_bytes", baseType: !21, size: 64, align: 64, offset: 704)
!1558 = !DIGlobalVariableExpression(var: !1559, expr: !DIExpression())
!1559 = distinct !DIGlobalVariable(scope: null, file: !102, line: 135, type: !1278, isLocal: true, isDefinition: true)
!1560 = !DIGlobalVariableExpression(var: !1561, expr: !DIExpression())
!1561 = distinct !DIGlobalVariable(scope: null, file: !1562, line: 616, type: !893, isLocal: true, isDefinition: true)
!1562 = !DIFile(filename: "hashmap.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1563 = !DIGlobalVariableExpression(var: !1564, expr: !DIExpression())
!1564 = distinct !DIGlobalVariable(scope: null, file: !1565, line: 80, type: !893, isLocal: true, isDefinition: true)
!1565 = !DIFile(filename: "interface.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1566 = !DIGlobalVariableExpression(var: !1567, expr: !DIExpression())
!1567 = distinct !DIGlobalVariable(scope: null, file: !1565, line: 89, type: !126, isLocal: true, isDefinition: true)
!1568 = !DIGlobalVariableExpression(var: !1569, expr: !DIExpression())
!1569 = distinct !DIGlobalVariable(scope: null, file: !105, line: 103, type: !1490, isLocal: true, isDefinition: true)
!1570 = !DIGlobalVariableExpression(var: !1571, expr: !DIExpression())
!1571 = distinct !DIGlobalVariable(scope: null, file: !105, line: 122, type: !126, isLocal: true, isDefinition: true)
!1572 = !DIGlobalVariableExpression(var: !1573, expr: !DIExpression())
!1573 = distinct !DIGlobalVariable(scope: null, file: !105, line: 189, type: !55, isLocal: true, isDefinition: true)
!1574 = !DIGlobalVariableExpression(var: !1575, expr: !DIExpression())
!1575 = distinct !DIGlobalVariable(scope: null, file: !105, line: 199, type: !126, isLocal: true, isDefinition: true)
!1576 = !DIGlobalVariableExpression(var: !1577, expr: !DIExpression())
!1577 = distinct !DIGlobalVariable(scope: null, file: !105, line: 205, type: !111, isLocal: true, isDefinition: true)
!1578 = !DIGlobalVariableExpression(var: !1579, expr: !DIExpression())
!1579 = distinct !DIGlobalVariable(scope: null, file: !105, line: 212, type: !1225, isLocal: true, isDefinition: true)
!1580 = !DIGlobalVariableExpression(var: !1581, expr: !DIExpression())
!1581 = distinct !DIGlobalVariable(scope: null, file: !105, line: 217, type: !1490, isLocal: true, isDefinition: true)
!1582 = !DIGlobalVariableExpression(var: !1583, expr: !DIExpression())
!1583 = distinct !DIGlobalVariable(scope: null, file: !105, line: 222, type: !942, isLocal: true, isDefinition: true)
!1584 = !DIGlobalVariableExpression(var: !1585, expr: !DIExpression())
!1585 = distinct !DIGlobalVariable(scope: null, file: !105, line: 227, type: !942, isLocal: true, isDefinition: true)
!1586 = !DIGlobalVariableExpression(var: !1587, expr: !DIExpression())
!1587 = distinct !DIGlobalVariable(scope: null, file: !105, line: 231, type: !1588, isLocal: true, isDefinition: true)
!1588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 416, align: 8, elements: !1589)
!1589 = !{!1590}
!1590 = !DISubrange(count: 52, lowerBound: 0)
!1591 = !DIGlobalVariableExpression(var: !1592, expr: !DIExpression())
!1592 = distinct !DIGlobalVariable(scope: null, file: !1593, line: 1, type: !893, isLocal: true, isDefinition: true)
!1593 = !DIFile(filename: "poll.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1594 = !DIGlobalVariableExpression(var: !1595, expr: !DIExpression())
!1595 = distinct !DIGlobalVariable(scope: null, file: !1593, line: 1, type: !1490, isLocal: true, isDefinition: true)
!1596 = !DIGlobalVariableExpression(var: !1597, expr: !DIExpression())
!1597 = distinct !DIGlobalVariable(scope: null, file: !1593, line: 1, type: !121, isLocal: true, isDefinition: true)
!1598 = !DIGlobalVariableExpression(var: !1599, expr: !DIExpression())
!1599 = distinct !DIGlobalVariable(scope: null, file: !1593, line: 1, type: !406, isLocal: true, isDefinition: true)
!1600 = !DIGlobalVariableExpression(var: !1601, expr: !DIExpression())
!1601 = distinct !DIGlobalVariable(scope: null, file: !1602, line: 117, type: !203, isLocal: true, isDefinition: true)
!1602 = !DIFile(filename: "print.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1603 = !DIGlobalVariableExpression(var: !1604, expr: !DIExpression())
!1604 = distinct !DIGlobalVariable(scope: null, file: !1602, line: 120, type: !375, isLocal: true, isDefinition: true)
!1605 = !DIGlobalVariableExpression(var: !1606, expr: !DIExpression())
!1606 = distinct !DIGlobalVariable(scope: null, file: !1602, line: 123, type: !375, isLocal: true, isDefinition: true)
!1607 = !DIGlobalVariableExpression(var: !1608, expr: !DIExpression())
!1608 = distinct !DIGlobalVariable(scope: null, file: !1602, line: 197, type: !203, isLocal: true, isDefinition: true)
!1609 = !DIGlobalVariableExpression(var: !1610, expr: !DIExpression())
!1610 = distinct !DIGlobalVariable(scope: null, file: !1602, line: 200, type: !375, isLocal: true, isDefinition: true)
!1611 = !DIGlobalVariableExpression(var: !1612, expr: !DIExpression())
!1612 = distinct !DIGlobalVariable(scope: null, file: !1602, line: 203, type: !375, isLocal: true, isDefinition: true)
!1613 = !DIGlobalVariableExpression(var: !1614, expr: !DIExpression())
!1614 = distinct !DIGlobalVariable(scope: null, file: !1602, line: 272, type: !116, isLocal: true, isDefinition: true)
!1615 = !DIGlobalVariableExpression(var: !1616, expr: !DIExpression())
!1616 = distinct !DIGlobalVariable(scope: null, file: !1602, line: 279, type: !116, isLocal: true, isDefinition: true)
!1617 = !DIGlobalVariableExpression(var: !1618, expr: !DIExpression())
!1618 = distinct !DIGlobalVariable(scope: null, file: !1602, line: 355, type: !375, isLocal: true, isDefinition: true)
!1619 = !DIGlobalVariableExpression(var: !1620, expr: !DIExpression())
!1620 = distinct !DIGlobalVariable(scope: null, file: !1602, line: 357, type: !203, isLocal: true, isDefinition: true)
!1621 = !DIGlobalVariableExpression(var: !1622, expr: !DIExpression())
!1622 = distinct !DIGlobalVariable(scope: null, file: !1602, line: 373, type: !203, isLocal: true, isDefinition: true)
!1623 = !DIGlobalVariableExpression(var: !1624, expr: !DIExpression())
!1624 = distinct !DIGlobalVariable(scope: null, file: !1602, line: 391, type: !375, isLocal: true, isDefinition: true)
!1625 = !DIGlobalVariableExpression(var: !1626, expr: !DIExpression())
!1626 = distinct !DIGlobalVariable(scope: null, file: !1602, line: 393, type: !445, isLocal: true, isDefinition: true)
!1627 = !DIGlobalVariableExpression(var: !1628, expr: !DIExpression())
!1628 = distinct !DIGlobalVariable(scope: null, file: !1531, line: 36, type: !478, isLocal: true, isDefinition: true)
!1629 = !DIGlobalVariableExpression(var: !1630, expr: !DIExpression())
!1630 = distinct !DIGlobalVariable(scope: null, file: !1531, line: 97, type: !55, isLocal: true, isDefinition: true)
!1631 = !DIGlobalVariableExpression(var: !1632, expr: !DIExpression())
!1632 = distinct !DIGlobalVariable(name: "runtime.main_argc", linkageName: "runtime.main_argc", scope: !131, file: !131, line: 105, type: !60, isLocal: false, isDefinition: true, align: 32)
!1633 = !DIGlobalVariableExpression(var: !1634, expr: !DIExpression())
!1634 = distinct !DIGlobalVariable(name: "runtime.args", linkageName: "runtime.args", scope: !131, file: !131, line: 107, type: !1635, isLocal: false, isDefinition: true, align: 64)
!1635 = !DICompositeType(tag: DW_TAG_structure_type, name: "[]string", size: 192, align: 64, elements: !1636)
!1636 = !{!1637, !367, !372}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", baseType: !1638, size: 64, align: 64)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64, align: 64, dwarfAddressSpace: 0)
!1639 = !DIGlobalVariableExpression(var: !1640, expr: !DIExpression())
!1640 = distinct !DIGlobalVariable(scope: null, file: !131, line: 160, type: !208, isLocal: true, isDefinition: true)
!1641 = !DIGlobalVariableExpression(var: !1642, expr: !DIExpression())
!1642 = distinct !DIGlobalVariable(scope: null, file: !131, line: 163, type: !429, isLocal: true, isDefinition: true)
!1643 = !DIGlobalVariableExpression(var: !1644, expr: !DIExpression())
!1644 = distinct !DIGlobalVariable(scope: null, file: !131, line: 165, type: !429, isLocal: true, isDefinition: true)
!1645 = !DIGlobalVariableExpression(var: !1646, expr: !DIExpression())
!1646 = distinct !DIGlobalVariable(scope: null, file: !131, line: 167, type: !106, isLocal: true, isDefinition: true)
!1647 = !DIGlobalVariableExpression(var: !1648, expr: !DIExpression())
!1648 = distinct !DIGlobalVariable(name: "runtime.heapMaxSize", linkageName: "runtime.heapMaxSize", scope: !131, file: !131, line: 299, type: !21, isLocal: false, isDefinition: true, align: 64)
!1649 = !DIGlobalVariableExpression(var: !1650, expr: !DIExpression())
!1650 = distinct !DIGlobalVariable(name: "runtime.heapStart", linkageName: "runtime.heapStart", scope: !131, file: !131, line: 301, type: !21, isLocal: false, isDefinition: true, align: 64)
!1651 = !DIGlobalVariableExpression(var: !1652, expr: !DIExpression())
!1652 = distinct !DIGlobalVariable(name: "runtime.heapEnd", linkageName: "runtime.heapEnd", scope: !131, file: !131, line: 301, type: !21, isLocal: false, isDefinition: true, align: 64)
!1653 = !DIGlobalVariableExpression(var: !1654, expr: !DIExpression())
!1654 = distinct !DIGlobalVariable(scope: null, file: !131, line: 317, type: !1149, isLocal: true, isDefinition: true)
!1655 = !DIGlobalVariableExpression(var: !1656, expr: !DIExpression())
!1656 = distinct !DIGlobalVariable(name: "runtime.hasSignals", linkageName: "runtime.hasSignals", scope: !131, file: !131, line: 345, type: !47, isLocal: false, isDefinition: true, align: 8)
!1657 = !DIGlobalVariableExpression(var: !1658, expr: !DIExpression())
!1658 = distinct !DIGlobalVariable(scope: null, file: !131, line: 365, type: !406, isLocal: true, isDefinition: true)
!1659 = !DIGlobalVariableExpression(var: !1660, expr: !DIExpression())
!1660 = distinct !DIGlobalVariable(scope: null, file: !131, line: 382, type: !406, isLocal: true, isDefinition: true)
!1661 = !DIGlobalVariableExpression(var: !1662, expr: !DIExpression())
!1662 = distinct !DIGlobalVariable(scope: null, file: !131, line: 392, type: !406, isLocal: true, isDefinition: true)
!1663 = !DIGlobalVariableExpression(var: !1664, expr: !DIExpression())
!1664 = distinct !DIGlobalVariable(name: "runtime.signalRecvWaiter", linkageName: "runtime.signalRecvWaiter", scope: !131, file: !131, line: 447, type: !1665, isLocal: false, isDefinition: true, align: 64)
!1665 = !DIDerivedType(tag: DW_TAG_typedef, name: "sync/atomic.Pointer[internal/task.Task]", baseType: !1666)
!1666 = !DICompositeType(tag: DW_TAG_structure_type, size: 64, align: 64, elements: !1667)
!1667 = !{!1668, !40, !1680}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "_", baseType: !1669, align: 64)
!1669 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1670, align: 64, elements: !968)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64, align: 64, dwarfAddressSpace: 0)
!1671 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.Task", baseType: !1672)
!1672 = !DICompositeType(tag: DW_TAG_structure_type, size: 704, align: 64, elements: !1673)
!1673 = !{!1674, !8, !10, !12, !1675, !44, !46, !48, !49}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "Next", baseType: !1670, size: 64, align: 64)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "state", baseType: !1676, size: 384, align: 64, offset: 192)
!1676 = !DIDerivedType(tag: DW_TAG_typedef, name: "internal/task.state", baseType: !1677)
!1677 = !DICompositeType(tag: DW_TAG_structure_type, size: 384, align: 64, elements: !1678)
!1678 = !{!20, !22, !24, !25, !1679, !27}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "QueueNext", baseType: !1670, size: 64, align: 64, offset: 256)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "v", baseType: !9, size: 64, align: 64)
!1681 = !DIGlobalVariableExpression(var: !1682, expr: !DIExpression())
!1682 = distinct !DIGlobalVariable(scope: null, file: !131, line: 458, type: !1210, isLocal: true, isDefinition: true)
!1683 = !DIGlobalVariableExpression(var: !1684, expr: !DIExpression())
!1684 = distinct !DIGlobalVariable(scope: null, file: !131, line: 514, type: !1149, isLocal: true, isDefinition: true)
!1685 = !DIGlobalVariableExpression(var: !1686, expr: !DIExpression())
!1686 = distinct !DIGlobalVariable(name: "runtime.timerQueue", linkageName: "runtime.timerQueue", scope: !1687, file: !1687, line: 7, type: !1688, isLocal: false, isDefinition: true, align: 64)
!1687 = !DIFile(filename: "scheduler.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1689, size: 64, align: 64, dwarfAddressSpace: 0)
!1689 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.timerNode", baseType: !1690)
!1690 = !DICompositeType(tag: DW_TAG_structure_type, size: 256, align: 64, elements: !1691)
!1691 = !{!1692, !1693, !1704}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "next", baseType: !1688, size: 64, align: 64)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "timer", baseType: !1694, size: 64, align: 64, offset: 64)
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64, align: 64, dwarfAddressSpace: 0)
!1695 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.timer", baseType: !1696)
!1696 = !DICompositeType(tag: DW_TAG_structure_type, size: 384, align: 64, elements: !1697)
!1697 = !{!1698, !1700, !1701, !1702}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "when", baseType: !1699, size: 64, align: 64)
!1699 = !DIBasicType(name: "int64", size: 64, encoding: DW_ATE_signed)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "period", baseType: !1699, size: 64, align: 64, offset: 64)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "f", baseType: !349, size: 128, align: 64, offset: 128)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "arg", baseType: !1703, size: 128, align: 64, offset: 256)
!1703 = !DIDerivedType(tag: DW_TAG_typedef, name: "any", baseType: !502)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "callback", baseType: !349, size: 128, align: 64, offset: 128)
!1705 = !DIGlobalVariableExpression(var: !1706, expr: !DIExpression())
!1706 = distinct !DIGlobalVariable(scope: null, file: !1687, line: 12, type: !203, isLocal: true, isDefinition: true)
!1707 = !DIGlobalVariableExpression(var: !1708, expr: !DIExpression())
!1708 = distinct !DIGlobalVariable(scope: null, file: !1687, line: 19, type: !203, isLocal: true, isDefinition: true)
!1709 = !DIGlobalVariableExpression(var: !1710, expr: !DIExpression())
!1710 = distinct !DIGlobalVariable(scope: null, file: !1687, line: 26, type: !203, isLocal: true, isDefinition: true)
!1711 = !DIGlobalVariableExpression(var: !1712, expr: !DIExpression())
!1712 = distinct !DIGlobalVariable(scope: null, file: !1687, line: 45, type: !478, isLocal: true, isDefinition: true)
!1713 = !DIGlobalVariableExpression(var: !1714, expr: !DIExpression())
!1714 = distinct !DIGlobalVariable(scope: null, file: !1687, line: 51, type: !67, isLocal: true, isDefinition: true)
!1715 = !DIGlobalVariableExpression(var: !1716, expr: !DIExpression())
!1716 = distinct !DIGlobalVariable(name: "runtime.timerQueueLock", linkageName: "runtime.timerQueueLock", scope: !145, file: !145, line: 16, type: !63, isLocal: false, isDefinition: true, align: 32)
!1717 = !DIGlobalVariableExpression(var: !1718, expr: !DIExpression())
!1718 = distinct !DIGlobalVariable(name: "runtime.timerQueueStarted", linkageName: "runtime.timerQueueStarted", scope: !145, file: !145, line: 17, type: !47, isLocal: false, isDefinition: true, align: 8)
!1719 = !DIGlobalVariableExpression(var: !1720, expr: !DIExpression())
!1720 = distinct !DIGlobalVariable(name: "runtime.timerFutex", linkageName: "runtime.timerFutex", scope: !145, file: !145, line: 18, type: !32, isLocal: false, isDefinition: true, align: 32)
!1721 = !DIGlobalVariableExpression(var: !1722, expr: !DIExpression())
!1722 = distinct !DIGlobalVariable(name: "runtime.atomicsLock", linkageName: "runtime.atomicsLock", scope: !145, file: !145, line: 151, type: !64, isLocal: false, isDefinition: true, align: 32)
!1723 = !DIGlobalVariableExpression(var: !1724, expr: !DIExpression())
!1724 = distinct !DIGlobalVariable(scope: null, file: !1725, line: 1, type: !208, isLocal: true, isDefinition: true)
!1725 = !DIFile(filename: "sync.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1726 = !DIGlobalVariableExpression(var: !1727, expr: !DIExpression())
!1727 = distinct !DIGlobalVariable(scope: null, file: !1725, line: 1, type: !208, isLocal: true, isDefinition: true)
!1728 = !DIGlobalVariableExpression(var: !1729, expr: !DIExpression())
!1729 = distinct !DIGlobalVariable(scope: null, file: !1730, line: 45, type: !424, isLocal: true, isDefinition: true)
!1730 = !DIFile(filename: "time_go123.go", directory: "/usr/local/lib/tinygo/src/runtime")
!1731 = distinct !DICompileUnit(language: DW_LANG_C99, file: !147, producer: "TinyGo", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1732 = !{!"TinyGo version 0.41.1"}
!1733 = !{i32 2, !"Debug Info Version", i32 3}
!1734 = !{i32 7, !"Dwarf Version", i32 4}
!1735 = distinct !DISubprogram(name: "(*internal/task.Mutex).Unlock", linkageName: "(*internal/task.Mutex).Unlock", scope: !54, file: !54, line: 49, type: !1736, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1462, retainedNodes: !1739)
!1736 = !DISubroutineType(cc: DW_CC_nocall, types: !1737)
!1737 = !{!1738}
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64, align: 64, dwarfAddressSpace: 0)
!1739 = !{!1740, !1741}
!1740 = !DILocalVariable(name: "m", arg: 1, scope: !1735, file: !54, line: 49, type: !1738)
!1741 = !DILocalVariable(name: "old", scope: !1735, file: !54, line: 50, type: !43)
!1742 = !DILocation(line: 49, column: 17, scope: !1735)
!1743 = !DILocation(line: 50, column: 12, scope: !1735)
!1744 = !DILocation(line: 50, column: 14, scope: !1735)
!1745 = !DILocalVariable(name: "x", arg: 1, scope: !1746, file: !1747, line: 153, type: !1750)
!1746 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).Swap", linkageName: "(*sync/atomic.Uint32).Swap", scope: !1747, file: !1747, line: 153, type: !1748, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !148, retainedNodes: !1751)
!1747 = !DIFile(filename: "type.go", directory: "/usr/local/go/src/sync/atomic")
!1748 = !DISubroutineType(types: !1749)
!1749 = !{!1750, !43}
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64, dwarfAddressSpace: 0)
!1751 = !{!1745, !1752}
!1752 = !DILocalVariable(name: "new", arg: 2, scope: !1746, file: !1747, line: 153, type: !43)
!1753 = !DILocation(line: 153, column: 18, scope: !1746, inlinedAt: !1754)
!1754 = distinct !DILocation(line: 50, column: 24, scope: !1735)
!1755 = !DILocation(line: 153, column: 69, scope: !1746, inlinedAt: !1754)
!1756 = !DILocation(line: 153, column: 74, scope: !1746, inlinedAt: !1754)
!1757 = !DILocalVariable(name: "addr", arg: 1, scope: !1758, file: !1759, line: 77, type: !1762)
!1758 = distinct !DISubprogram(name: "sync/atomic.SwapUint32", linkageName: "sync/atomic.SwapUint32", scope: !1759, file: !1759, line: 77, type: !1760, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !148, retainedNodes: !1763)
!1759 = !DIFile(filename: "doc.go", directory: "/usr/local/go/src/sync/atomic")
!1760 = !DISubroutineType(types: !1761)
!1761 = !{!1762, !43}
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64, align: 64, dwarfAddressSpace: 0)
!1763 = !{!1757, !1764}
!1764 = !DILocalVariable(name: "new", arg: 2, scope: !1758, file: !1759, line: 77, type: !43)
!1765 = !DILocation(line: 77, column: 6, scope: !1758, inlinedAt: !1766)
!1766 = distinct !DILocation(line: 153, column: 67, scope: !1746, inlinedAt: !1754)
!1767 = !DILocation(line: 50, column: 5, scope: !1735)
!1768 = !DILocation(line: 50, column: 29, scope: !1735)
!1769 = !DILocation(line: 0, scope: !1735)
!1770 = !DILocation(line: 52, column: 8, scope: !1735)
!1771 = !DILocation(line: 55, column: 3, scope: !1735)
!1772 = !DILocalVariable(name: "f", arg: 1, scope: !1773, file: !1774, line: 53, type: !1777)
!1773 = distinct !DISubprogram(name: "(*internal/futex.Futex).Wake", linkageName: "(*internal/futex.Futex).Wake", scope: !1774, file: !1774, line: 53, type: !1775, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !189, retainedNodes: !1778)
!1774 = !DIFile(filename: "futex.go", directory: "/usr/local/lib/tinygo/src/internal/futex")
!1775 = !DISubroutineType(types: !1776)
!1776 = !{!1777}
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64, dwarfAddressSpace: 0)
!1778 = !{!1772}
!1779 = !DILocation(line: 53, column: 17, scope: !1773, inlinedAt: !1780)
!1780 = distinct !DILocation(line: 55, column: 15, scope: !1735)
!1781 = !DILocation(line: 54, column: 46, scope: !1773, inlinedAt: !1780)
!1782 = !DILocation(line: 54, column: 19, scope: !1773, inlinedAt: !1780)
!1783 = !DILocation(line: 57, column: 2, scope: !1735)
!1784 = distinct !DISubprogram(name: "internal/task.taskExited", linkageName: "tinygo_task_exited", scope: !2, file: !2, line: 125, type: !1785, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1462, retainedNodes: !1787)
!1785 = !DISubroutineType(types: !1786)
!1786 = !{!3}
!1787 = !{!1788, !1789, !1790, !1792}
!1788 = !DILocalVariable(name: "t", arg: 1, scope: !1784, file: !2, line: 125, type: !3)
!1789 = !DILocalVariable(name: "found", scope: !1784, file: !2, line: 133, type: !47)
!1790 = !DILocalVariable(name: "q", scope: !1784, file: !2, line: 134, type: !1791)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3, size: 64, align: 64, dwarfAddressSpace: 0)
!1792 = !DILocalVariable(name: "otherGoroutines", scope: !1784, file: !2, line: 99, type: !43)
!1793 = !DILocation(line: 125, column: 6, scope: !1784)
!1794 = !DILocalVariable(name: "m", arg: 1, scope: !1795, file: !54, line: 31, type: !1738)
!1795 = distinct !DISubprogram(name: "(*internal/task.Mutex).Lock", linkageName: "(*internal/task.Mutex).Lock", scope: !54, file: !54, line: 31, type: !1796, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1462, retainedNodes: !1797)
!1796 = !DISubroutineType(types: !1737)
!1797 = !{!1794}
!1798 = !DILocation(line: 31, column: 17, scope: !1795, inlinedAt: !1799)
!1799 = distinct !DILocation(line: 132, column: 21, scope: !1784)
!1800 = !DILocation(line: 33, column: 5, scope: !1795, inlinedAt: !1799)
!1801 = !DILocalVariable(name: "x", arg: 1, scope: !1802, file: !1747, line: 156, type: !1750)
!1802 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).CompareAndSwap", linkageName: "(*sync/atomic.Uint32).CompareAndSwap", scope: !1747, file: !1747, line: 156, type: !1803, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !148, retainedNodes: !1805)
!1803 = !DISubroutineType(types: !1804)
!1804 = !{!1750, !43, !43}
!1805 = !{!1801, !1806, !1807}
!1806 = !DILocalVariable(name: "old", arg: 2, scope: !1802, file: !1747, line: 156, type: !43)
!1807 = !DILocalVariable(name: "new", arg: 3, scope: !1802, file: !1747, line: 156, type: !43)
!1808 = !DILocation(line: 156, column: 18, scope: !1802, inlinedAt: !1809)
!1809 = distinct !DILocation(line: 33, column: 27, scope: !1795, inlinedAt: !1799)
!1810 = !DILocation(line: 157, column: 31, scope: !1802, inlinedAt: !1809)
!1811 = !DILocation(line: 157, column: 36, scope: !1802, inlinedAt: !1809)
!1812 = !DILocation(line: 157, column: 41, scope: !1802, inlinedAt: !1809)
!1813 = !DILocalVariable(name: "addr", arg: 1, scope: !1814, file: !1759, line: 99, type: !1762)
!1814 = distinct !DISubprogram(name: "sync/atomic.CompareAndSwapUint32", linkageName: "sync/atomic.CompareAndSwapUint32", scope: !1759, file: !1759, line: 99, type: !1815, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !148, retainedNodes: !1817)
!1815 = !DISubroutineType(types: !1816)
!1816 = !{!1762, !43, !43}
!1817 = !{!1813, !1818, !1819}
!1818 = !DILocalVariable(name: "old", arg: 2, scope: !1814, file: !1759, line: 99, type: !43)
!1819 = !DILocalVariable(name: "new", arg: 3, scope: !1814, file: !1759, line: 99, type: !43)
!1820 = !DILocation(line: 99, column: 6, scope: !1814, inlinedAt: !1821)
!1821 = distinct !DILocation(line: 157, column: 29, scope: !1802, inlinedAt: !1809)
!1822 = !DILocation(line: 0, scope: !1795, inlinedAt: !1799)
!1823 = !DILocation(line: 43, column: 6, scope: !1795, inlinedAt: !1799)
!1824 = !DILocation(line: 153, column: 18, scope: !1746, inlinedAt: !1825)
!1825 = distinct !DILocation(line: 43, column: 18, scope: !1795, inlinedAt: !1799)
!1826 = !DILocation(line: 153, column: 69, scope: !1746, inlinedAt: !1825)
!1827 = !DILocation(line: 153, column: 74, scope: !1746, inlinedAt: !1825)
!1828 = !DILocation(line: 77, column: 6, scope: !1758, inlinedAt: !1829)
!1829 = distinct !DILocation(line: 153, column: 67, scope: !1746, inlinedAt: !1825)
!1830 = !DILocation(line: 43, column: 22, scope: !1795, inlinedAt: !1799)
!1831 = !DILocation(line: 45, column: 3, scope: !1795, inlinedAt: !1799)
!1832 = !DILocalVariable(name: "f", arg: 1, scope: !1833, file: !1774, line: 25, type: !1777)
!1833 = distinct !DISubprogram(name: "(*internal/futex.Futex).Wait", linkageName: "(*internal/futex.Futex).Wait", scope: !1774, file: !1774, line: 25, type: !1834, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !189, retainedNodes: !1836)
!1834 = !DISubroutineType(types: !1835)
!1835 = !{!1777, !43}
!1836 = !{!1832, !1837}
!1837 = !DILocalVariable(name: "cmp", arg: 2, scope: !1833, file: !1774, line: 25, type: !43)
!1838 = !DILocation(line: 26, column: 46, scope: !1833, inlinedAt: !1839)
!1839 = distinct !DILocation(line: 45, column: 15, scope: !1795, inlinedAt: !1799)
!1840 = !DILocation(line: 26, column: 58, scope: !1833, inlinedAt: !1839)
!1841 = !DILocation(line: 26, column: 19, scope: !1833, inlinedAt: !1839)
!1842 = !DILocation(line: 133, column: 2, scope: !1784)
!1843 = !DILocation(line: 134, column: 6, scope: !1784)
!1844 = !DILocation(line: 134, column: 25, scope: !1784)
!1845 = !DILocation(line: 134, column: 28, scope: !1784)
!1846 = !DILocation(line: 0, scope: !1784)
!1847 = !DILocation(line: 134, column: 52, scope: !1784)
!1848 = !DILocation(line: 134, column: 36, scope: !1784)
!1849 = !DILocation(line: 134, column: 26, scope: !1784)
!1850 = !DILocation(line: 135, column: 7, scope: !1784)
!1851 = !DILocation(line: 135, column: 12, scope: !1784)
!1852 = !DILocation(line: 135, column: 9, scope: !1784)
!1853 = !DILocation(line: 134, column: 43, scope: !1784)
!1854 = !DILocation(line: 136, column: 5, scope: !1784)
!1855 = !DILocation(line: 136, column: 9, scope: !1784)
!1856 = !DILocation(line: 136, column: 17, scope: !1784)
!1857 = !DILocation(line: 136, column: 4, scope: !1784)
!1858 = !DILocation(line: 137, column: 4, scope: !1784)
!1859 = !DILocation(line: 141, column: 2, scope: !1784)
!1860 = !DILocation(line: 49, column: 17, scope: !1735, inlinedAt: !1861)
!1861 = distinct !DILocation(line: 142, column: 23, scope: !1784)
!1862 = !DILocation(line: 50, column: 12, scope: !1735, inlinedAt: !1861)
!1863 = !DILocation(line: 153, column: 18, scope: !1746, inlinedAt: !1864)
!1864 = distinct !DILocation(line: 50, column: 24, scope: !1735, inlinedAt: !1861)
!1865 = !DILocation(line: 153, column: 69, scope: !1746, inlinedAt: !1864)
!1866 = !DILocation(line: 153, column: 74, scope: !1746, inlinedAt: !1864)
!1867 = !DILocation(line: 77, column: 6, scope: !1758, inlinedAt: !1868)
!1868 = distinct !DILocation(line: 153, column: 67, scope: !1746, inlinedAt: !1864)
!1869 = !DILocation(line: 50, column: 5, scope: !1735, inlinedAt: !1861)
!1870 = !DILocation(line: 50, column: 29, scope: !1735, inlinedAt: !1861)
!1871 = !DILocation(line: 0, scope: !1735, inlinedAt: !1861)
!1872 = !DILocation(line: 52, column: 8, scope: !1735, inlinedAt: !1861)
!1873 = !DILocation(line: 55, column: 3, scope: !1735, inlinedAt: !1861)
!1874 = !DILocation(line: 53, column: 17, scope: !1773, inlinedAt: !1875)
!1875 = distinct !DILocation(line: 55, column: 15, scope: !1735, inlinedAt: !1861)
!1876 = !DILocation(line: 54, column: 46, scope: !1773, inlinedAt: !1875)
!1877 = !DILocation(line: 54, column: 19, scope: !1773, inlinedAt: !1875)
!1878 = !DILocation(line: 145, column: 6, scope: !1784)
!1879 = !DILocation(line: 148, column: 2, scope: !1784)
!1880 = !DILocation(line: 142, column: 23, scope: !1784)
!1881 = !DILocation(line: 146, column: 15, scope: !1784)
!1882 = distinct !DISubprogram(name: "internal/task.tingyo_task_gc_pause", linkageName: "tinygo_task_gc_pause", scope: !2, file: !2, line: 266, type: !1883, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1462, retainedNodes: !1885)
!1883 = !DISubroutineType(types: !1884)
!1884 = !{!60}
!1885 = !{!1886, !1887}
!1886 = !DILocalVariable(name: "sig", arg: 1, scope: !1882, file: !2, line: 266, type: !60)
!1887 = !DILocalVariable(name: "stackBottom", scope: !1882, file: !2, line: 28, type: !21)
!1888 = !DILocation(line: 266, column: 6, scope: !1882)
!1889 = !DILocation(line: 62, column: 34, scope: !1890, inlinedAt: !1894)
!1890 = distinct !DISubprogram(name: "internal/task.Current", linkageName: "internal/task.Current", scope: !2, file: !2, line: 61, type: !1891, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1462, retainedNodes: !1892)
!1891 = !DISubroutineType(types: !15)
!1892 = !{!1893}
!1893 = !DILocalVariable(name: "t", scope: !1890, file: !2, line: 62, type: !3)
!1894 = distinct !DILocation(line: 268, column: 9, scope: !1882)
!1895 = !DILocation(line: 62, column: 2, scope: !1890, inlinedAt: !1894)
!1896 = !DILocation(line: 63, column: 5, scope: !1890, inlinedAt: !1894)
!1897 = !DILocation(line: 63, column: 7, scope: !1890, inlinedAt: !1894)
!1898 = !DILocation(line: 0, scope: !1890, inlinedAt: !1894)
!1899 = !DILocation(line: 64, column: 15, scope: !1890, inlinedAt: !1894)
!1900 = !DILocation(line: 66, column: 9, scope: !1890, inlinedAt: !1894)
!1901 = !DILocation(line: 58, column: 6, scope: !1902, inlinedAt: !1903)
!1902 = distinct !DISubprogram(name: "runtime.stacksave", linkageName: "runtime.stacksave", scope: !1531, file: !1531, line: 58, type: !1891, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496)
!1903 = distinct !DILocation(line: 268, column: 49, scope: !1882)
!1904 = !DILocation(line: 268, column: 39, scope: !1882)
!1905 = !DILocation(line: 268, column: 18, scope: !1882)
!1906 = !DILocalVariable(name: "wg", arg: 1, scope: !1907, file: !2, line: 163, type: !1910)
!1907 = distinct !DISubprogram(name: "(*internal/task.waitGroup).done", linkageName: "(*internal/task.waitGroup).done", scope: !2, file: !2, line: 163, type: !1908, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1462, retainedNodes: !1911)
!1908 = !DISubroutineType(types: !1909)
!1909 = !{!1910}
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64, align: 64, dwarfAddressSpace: 0)
!1911 = !{!1906}
!1912 = !DILocation(line: 163, column: 22, scope: !1907, inlinedAt: !1913)
!1913 = distinct !DILocation(line: 271, column: 20, scope: !1882)
!1914 = !DILocation(line: 164, column: 5, scope: !1907, inlinedAt: !1913)
!1915 = !DILocalVariable(name: "x", arg: 1, scope: !1916, file: !1747, line: 161, type: !1750)
!1916 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).Add", linkageName: "(*sync/atomic.Uint32).Add", scope: !1747, file: !1747, line: 161, type: !1748, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !148, retainedNodes: !1917)
!1917 = !{!1915, !1918}
!1918 = !DILocalVariable(name: "delta", arg: 2, scope: !1916, file: !1747, line: 161, type: !43)
!1919 = !DILocation(line: 161, column: 18, scope: !1916, inlinedAt: !1920)
!1920 = distinct !DILocation(line: 164, column: 13, scope: !1907, inlinedAt: !1913)
!1921 = !DILocation(line: 161, column: 69, scope: !1916, inlinedAt: !1920)
!1922 = !DILocation(line: 161, column: 74, scope: !1916, inlinedAt: !1920)
!1923 = !DILocalVariable(name: "addr", arg: 1, scope: !1924, file: !1759, line: 123, type: !1762)
!1924 = distinct !DISubprogram(name: "sync/atomic.AddUint32", linkageName: "sync/atomic.AddUint32", scope: !1759, file: !1759, line: 123, type: !1760, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !148, retainedNodes: !1925)
!1925 = !{!1923, !1926}
!1926 = !DILocalVariable(name: "delta", arg: 2, scope: !1924, file: !1759, line: 123, type: !43)
!1927 = !DILocation(line: 123, column: 6, scope: !1924, inlinedAt: !1928)
!1928 = distinct !DILocation(line: 161, column: 67, scope: !1916, inlinedAt: !1920)
!1929 = !DILocation(line: 164, column: 26, scope: !1907, inlinedAt: !1913)
!1930 = !DILocation(line: 0, scope: !1907, inlinedAt: !1913)
!1931 = !DILocation(line: 165, column: 3, scope: !1907, inlinedAt: !1913)
!1932 = !DILocalVariable(name: "f", arg: 1, scope: !1933, file: !1774, line: 58, type: !1777)
!1933 = distinct !DISubprogram(name: "(*internal/futex.Futex).WakeAll", linkageName: "(*internal/futex.Futex).WakeAll", scope: !1774, file: !1774, line: 58, type: !1775, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !189, retainedNodes: !1934)
!1934 = !{!1932}
!1935 = !DILocation(line: 58, column: 17, scope: !1933, inlinedAt: !1936)
!1936 = distinct !DILocation(line: 165, column: 15, scope: !1907, inlinedAt: !1913)
!1937 = !DILocation(line: 59, column: 50, scope: !1933, inlinedAt: !1936)
!1938 = !DILocation(line: 59, column: 23, scope: !1933, inlinedAt: !1936)
!1939 = !DILocalVariable(name: "x", arg: 1, scope: !1940, file: !1747, line: 147, type: !1750)
!1940 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).Load", linkageName: "(*sync/atomic.Uint32).Load", scope: !1747, file: !1747, line: 147, type: !1941, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !148, retainedNodes: !1943)
!1941 = !DISubroutineType(types: !1942)
!1942 = !{!1750}
!1943 = !{!1939}
!1944 = !DILocation(line: 147, column: 18, scope: !1940, inlinedAt: !1945)
!1945 = distinct !DILocation(line: 274, column: 18, scope: !1882)
!1946 = !DILocation(line: 147, column: 53, scope: !1940, inlinedAt: !1945)
!1947 = !DILocalVariable(name: "addr", arg: 1, scope: !1948, file: !1759, line: 183, type: !1762)
!1948 = distinct !DISubprogram(name: "sync/atomic.LoadUint32", linkageName: "sync/atomic.LoadUint32", scope: !1759, file: !1759, line: 183, type: !1949, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !148, retainedNodes: !1951)
!1949 = !DISubroutineType(types: !1950)
!1950 = !{!1762}
!1951 = !{!1947}
!1952 = !DILocation(line: 183, column: 6, scope: !1948, inlinedAt: !1953)
!1953 = distinct !DILocation(line: 147, column: 51, scope: !1940, inlinedAt: !1945)
!1954 = !DILocation(line: 274, column: 21, scope: !1882)
!1955 = !DILocation(line: 0, scope: !1882)
!1956 = !DILocation(line: 26, column: 46, scope: !1833, inlinedAt: !1957)
!1957 = distinct !DILocation(line: 275, column: 15, scope: !1882)
!1958 = !DILocation(line: 26, column: 58, scope: !1833, inlinedAt: !1957)
!1959 = !DILocation(line: 26, column: 19, scope: !1833, inlinedAt: !1957)
!1960 = !DILocation(line: 163, column: 22, scope: !1907, inlinedAt: !1961)
!1961 = distinct !DILocation(line: 279, column: 20, scope: !1882)
!1962 = !DILocation(line: 164, column: 5, scope: !1907, inlinedAt: !1961)
!1963 = !DILocation(line: 161, column: 18, scope: !1916, inlinedAt: !1964)
!1964 = distinct !DILocation(line: 164, column: 13, scope: !1907, inlinedAt: !1961)
!1965 = !DILocation(line: 161, column: 69, scope: !1916, inlinedAt: !1964)
!1966 = !DILocation(line: 161, column: 74, scope: !1916, inlinedAt: !1964)
!1967 = !DILocation(line: 123, column: 6, scope: !1924, inlinedAt: !1968)
!1968 = distinct !DILocation(line: 161, column: 67, scope: !1916, inlinedAt: !1964)
!1969 = !DILocation(line: 164, column: 26, scope: !1907, inlinedAt: !1961)
!1970 = !DILocation(line: 0, scope: !1907, inlinedAt: !1961)
!1971 = !DILocation(line: 165, column: 3, scope: !1907, inlinedAt: !1961)
!1972 = !DILocation(line: 58, column: 17, scope: !1933, inlinedAt: !1973)
!1973 = distinct !DILocation(line: 165, column: 15, scope: !1907, inlinedAt: !1961)
!1974 = !DILocation(line: 59, column: 50, scope: !1933, inlinedAt: !1973)
!1975 = !DILocation(line: 59, column: 23, scope: !1933, inlinedAt: !1973)
!1976 = !DILocation(line: 280, column: 2, scope: !1882)
!1977 = distinct !DISubprogram(name: "runtime.alloc", linkageName: "runtime.alloc", scope: !102, file: !102, line: 68, type: !1978, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !1980)
!1978 = !DISubroutineType(cc: DW_CC_nocall, types: !1979)
!1979 = !{!21, !9}
!1980 = !{!1981, !1982, !1983}
!1981 = !DILocalVariable(name: "size", arg: 1, scope: !1977, file: !102, line: 68, type: !21)
!1982 = !DILocalVariable(name: "layout", arg: 2, scope: !1977, file: !102, line: 68, type: !9)
!1983 = !DILocalVariable(name: "ptr", scope: !1977, file: !102, line: 74, type: !9)
!1984 = !DILocation(line: 68, column: 6, scope: !1977)
!1985 = !DILocation(line: 69, column: 5, scope: !1977)
!1986 = !DILocation(line: 31, column: 17, scope: !1795, inlinedAt: !1987)
!1987 = distinct !DILocation(line: 73, column: 13, scope: !1977)
!1988 = !DILocation(line: 33, column: 5, scope: !1795, inlinedAt: !1987)
!1989 = !DILocation(line: 156, column: 18, scope: !1802, inlinedAt: !1990)
!1990 = distinct !DILocation(line: 33, column: 27, scope: !1795, inlinedAt: !1987)
!1991 = !DILocation(line: 157, column: 31, scope: !1802, inlinedAt: !1990)
!1992 = !DILocation(line: 157, column: 36, scope: !1802, inlinedAt: !1990)
!1993 = !DILocation(line: 157, column: 41, scope: !1802, inlinedAt: !1990)
!1994 = !DILocation(line: 99, column: 6, scope: !1814, inlinedAt: !1995)
!1995 = distinct !DILocation(line: 157, column: 29, scope: !1802, inlinedAt: !1990)
!1996 = !DILocation(line: 0, scope: !1795, inlinedAt: !1987)
!1997 = !DILocation(line: 43, column: 6, scope: !1795, inlinedAt: !1987)
!1998 = !DILocation(line: 153, column: 18, scope: !1746, inlinedAt: !1999)
!1999 = distinct !DILocation(line: 43, column: 18, scope: !1795, inlinedAt: !1987)
!2000 = !DILocation(line: 153, column: 69, scope: !1746, inlinedAt: !1999)
!2001 = !DILocation(line: 153, column: 74, scope: !1746, inlinedAt: !1999)
!2002 = !DILocation(line: 77, column: 6, scope: !1758, inlinedAt: !2003)
!2003 = distinct !DILocation(line: 153, column: 67, scope: !1746, inlinedAt: !1999)
!2004 = !DILocation(line: 43, column: 22, scope: !1795, inlinedAt: !1987)
!2005 = !DILocation(line: 45, column: 3, scope: !1795, inlinedAt: !1987)
!2006 = !DILocation(line: 26, column: 46, scope: !1833, inlinedAt: !2007)
!2007 = distinct !DILocation(line: 45, column: 15, scope: !1795, inlinedAt: !1987)
!2008 = !DILocation(line: 26, column: 58, scope: !1833, inlinedAt: !2007)
!2009 = !DILocation(line: 26, column: 19, scope: !1833, inlinedAt: !2007)
!2010 = !DILocation(line: 74, column: 6, scope: !1977)
!2011 = !DILocation(line: 75, column: 5, scope: !1977)
!2012 = !DILocation(line: 79, column: 29, scope: !1977)
!2013 = !DILocation(line: 79, column: 28, scope: !1977)
!2014 = !DILocation(line: 79, column: 3, scope: !1977)
!2015 = !DILocation(line: 82, column: 11, scope: !1977)
!2016 = !DILocation(line: 82, column: 16, scope: !1977)
!2017 = !DILocalVariable(name: "ptr", arg: 1, scope: !2018, file: !1531, line: 53, type: !9)
!2018 = distinct !DISubprogram(name: "runtime.memzero", linkageName: "runtime.memzero", scope: !1531, file: !1531, line: 53, type: !2019, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2021)
!2019 = !DISubroutineType(types: !2020)
!2020 = !{!9, !21}
!2021 = !{!2017, !2022}
!2022 = !DILocalVariable(name: "size", arg: 2, scope: !2018, file: !1531, line: 53, type: !21)
!2023 = !DILocation(line: 53, column: 6, scope: !2018, inlinedAt: !2024)
!2024 = distinct !DILocation(line: 82, column: 10, scope: !1977)
!2025 = !DILocation(line: 147, column: 18, scope: !1940, inlinedAt: !2026)
!2026 = distinct !DILocation(line: 239, column: 17, scope: !2027, inlinedAt: !2031)
!2027 = distinct !DISubprogram(name: "internal/task.GCResumeWorld", linkageName: "internal/task.GCResumeWorld", scope: !2, file: !2, line: 237, type: !1891, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1462, retainedNodes: !2028)
!2028 = !{!2029, !2030}
!2029 = !DILocalVariable(name: "otherGoroutines", scope: !2027, file: !2, line: 99, type: !43)
!2030 = !DILocalVariable(name: "scanWaitGroup", scope: !2027, file: !2, line: 151, type: !79)
!2031 = distinct !DILocation(line: 28, column: 20, scope: !2032, inlinedAt: !2034)
!2032 = distinct !DISubprogram(name: "runtime.gcResumeWorld", linkageName: "runtime.gcResumeWorld", scope: !2033, file: !2033, line: 27, type: !1891, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496)
!2033 = !DIFile(filename: "gc_stack_threads.go", directory: "/usr/local/lib/tinygo/src/runtime")
!2034 = distinct !DILocation(line: 90, column: 15, scope: !1977)
!2035 = !DILocation(line: 147, column: 53, scope: !1940, inlinedAt: !2026)
!2036 = !DILocation(line: 183, column: 6, scope: !1948, inlinedAt: !2037)
!2037 = distinct !DILocation(line: 147, column: 51, scope: !1940, inlinedAt: !2026)
!2038 = !DILocation(line: 239, column: 20, scope: !2027, inlinedAt: !2031)
!2039 = !DILocation(line: 0, scope: !2027, inlinedAt: !2031)
!2040 = !DILocation(line: 245, column: 32, scope: !2027, inlinedAt: !2031)
!2041 = !DILocation(line: 245, column: 2, scope: !2027, inlinedAt: !2031)
!2042 = !DILocalVariable(name: "x", arg: 1, scope: !2043, file: !1747, line: 150, type: !1750)
!2043 = distinct !DISubprogram(name: "(*sync/atomic.Uint32).Store", linkageName: "(*sync/atomic.Uint32).Store", scope: !1747, file: !1747, line: 150, type: !1748, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !148, retainedNodes: !2044)
!2044 = !{!2042, !2045}
!2045 = !DILocalVariable(name: "val", arg: 2, scope: !2043, file: !1747, line: 150, type: !43)
!2046 = !DILocation(line: 150, column: 18, scope: !2043, inlinedAt: !2047)
!2047 = distinct !DILocation(line: 248, column: 15, scope: !2027, inlinedAt: !2031)
!2048 = !DILocation(line: 150, column: 51, scope: !2043, inlinedAt: !2047)
!2049 = !DILocation(line: 150, column: 56, scope: !2043, inlinedAt: !2047)
!2050 = !DILocalVariable(name: "addr", arg: 1, scope: !2051, file: !1759, line: 205, type: !1762)
!2051 = distinct !DISubprogram(name: "sync/atomic.StoreUint32", linkageName: "sync/atomic.StoreUint32", scope: !1759, file: !1759, line: 205, type: !1760, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !148, retainedNodes: !2052)
!2052 = !{!2050, !2053}
!2053 = !DILocalVariable(name: "val", arg: 2, scope: !2051, file: !1759, line: 205, type: !43)
!2054 = !DILocation(line: 205, column: 6, scope: !2051, inlinedAt: !2055)
!2055 = distinct !DILocation(line: 150, column: 49, scope: !2043, inlinedAt: !2047)
!2056 = !DILocation(line: 58, column: 17, scope: !1933, inlinedAt: !2057)
!2057 = distinct !DILocation(line: 251, column: 17, scope: !2027, inlinedAt: !2031)
!2058 = !DILocation(line: 59, column: 50, scope: !1933, inlinedAt: !2057)
!2059 = !DILocation(line: 59, column: 23, scope: !1933, inlinedAt: !2057)
!2060 = !DILocation(line: 49, column: 17, scope: !1735, inlinedAt: !2061)
!2061 = distinct !DILocation(line: 254, column: 23, scope: !2027, inlinedAt: !2031)
!2062 = !DILocation(line: 50, column: 12, scope: !1735, inlinedAt: !2061)
!2063 = !DILocation(line: 153, column: 18, scope: !1746, inlinedAt: !2064)
!2064 = distinct !DILocation(line: 50, column: 24, scope: !1735, inlinedAt: !2061)
!2065 = !DILocation(line: 153, column: 69, scope: !1746, inlinedAt: !2064)
!2066 = !DILocation(line: 153, column: 74, scope: !1746, inlinedAt: !2064)
!2067 = !DILocation(line: 77, column: 6, scope: !1758, inlinedAt: !2068)
!2068 = distinct !DILocation(line: 153, column: 67, scope: !1746, inlinedAt: !2064)
!2069 = !DILocation(line: 50, column: 5, scope: !1735, inlinedAt: !2061)
!2070 = !DILocation(line: 50, column: 29, scope: !1735, inlinedAt: !2061)
!2071 = !DILocation(line: 0, scope: !1735, inlinedAt: !2061)
!2072 = !DILocation(line: 52, column: 8, scope: !1735, inlinedAt: !2061)
!2073 = !DILocation(line: 55, column: 3, scope: !1735, inlinedAt: !2061)
!2074 = !DILocation(line: 53, column: 17, scope: !1773, inlinedAt: !2075)
!2075 = distinct !DILocation(line: 55, column: 15, scope: !1735, inlinedAt: !2061)
!2076 = !DILocation(line: 54, column: 46, scope: !1773, inlinedAt: !2075)
!2077 = !DILocation(line: 54, column: 19, scope: !1773, inlinedAt: !2075)
!2078 = !DILocation(line: 49, column: 17, scope: !1735, inlinedAt: !2079)
!2079 = distinct !DILocation(line: 91, column: 15, scope: !1977)
!2080 = !DILocation(line: 50, column: 12, scope: !1735, inlinedAt: !2079)
!2081 = !DILocation(line: 153, column: 18, scope: !1746, inlinedAt: !2082)
!2082 = distinct !DILocation(line: 50, column: 24, scope: !1735, inlinedAt: !2079)
!2083 = !DILocation(line: 153, column: 69, scope: !1746, inlinedAt: !2082)
!2084 = !DILocation(line: 153, column: 74, scope: !1746, inlinedAt: !2082)
!2085 = !DILocation(line: 77, column: 6, scope: !1758, inlinedAt: !2086)
!2086 = distinct !DILocation(line: 153, column: 67, scope: !1746, inlinedAt: !2082)
!2087 = !DILocation(line: 50, column: 5, scope: !1735, inlinedAt: !2079)
!2088 = !DILocation(line: 50, column: 29, scope: !1735, inlinedAt: !2079)
!2089 = !DILocation(line: 0, scope: !1735, inlinedAt: !2079)
!2090 = !DILocation(line: 52, column: 8, scope: !1735, inlinedAt: !2079)
!2091 = !DILocation(line: 55, column: 3, scope: !1735, inlinedAt: !2079)
!2092 = !DILocation(line: 53, column: 17, scope: !1773, inlinedAt: !2093)
!2093 = distinct !DILocation(line: 55, column: 15, scope: !1735, inlinedAt: !2079)
!2094 = !DILocation(line: 54, column: 46, scope: !1773, inlinedAt: !2093)
!2095 = !DILocation(line: 54, column: 19, scope: !1773, inlinedAt: !2093)
!2096 = !DILocation(line: 92, column: 5, scope: !1977)
!2097 = !DILocation(line: 0, scope: !1977)
!2098 = distinct !DISubprogram(name: "runtime.runtimePanic", linkageName: "runtime.runtimePanic", scope: !105, file: !105, line: 85, type: !2099, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2101)
!2099 = !DISubroutineType(cc: DW_CC_nocall, types: !2100)
!2100 = !{!363}
!2101 = !{!2102}
!2102 = !DILocalVariable(name: "msg", arg: 1, scope: !2098, file: !105, line: 85, type: !363)
!2103 = !DILocation(line: 85, column: 6, scope: !2098)
!2104 = !DILocation(line: 88, column: 30, scope: !2098)
!2105 = !DILocation(line: 88, column: 35, scope: !2098)
!2106 = !DILocation(line: 88, column: 16, scope: !2098)
!2107 = !DILocation(line: 89, column: 2, scope: !2098)
!2108 = distinct !DISubprogram(name: "runtime.runtimePanicAt", linkageName: "runtime.runtimePanicAt", scope: !105, file: !105, line: 91, type: !2109, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2111)
!2109 = !DISubroutineType(cc: DW_CC_nocall, types: !2110)
!2110 = !{!9, !363}
!2111 = !{!2112, !2113}
!2112 = !DILocalVariable(name: "addr", arg: 1, scope: !2108, file: !105, line: 91, type: !9)
!2113 = !DILocalVariable(name: "msg", arg: 2, scope: !2108, file: !105, line: 91, type: !363)
!2114 = !DILocation(line: 91, column: 6, scope: !2108)
!2115 = !DILocation(line: 99, column: 14, scope: !2108)
!2116 = !DILocation(line: 100, column: 20, scope: !2108)
!2117 = !DILocation(line: 100, column: 19, scope: !2108)
!2118 = !DILocation(line: 100, column: 26, scope: !2108)
!2119 = !DILocation(line: 100, column: 11, scope: !2108)
!2120 = !DILocation(line: 101, column: 14, scope: !2108)
!2121 = !DILocation(line: 105, column: 14, scope: !2108)
!2122 = !DILocation(line: 105, column: 13, scope: !2108)
!2123 = !DILocation(line: 106, column: 9, scope: !2108)
!2124 = !DILocation(line: 107, column: 7, scope: !2108)
!2125 = !DILocation(line: 108, column: 2, scope: !2108)
!2126 = distinct !DISubprogram(name: "runtime.printstring", linkageName: "runtime.printstring", scope: !1602, file: !1602, line: 12, type: !2099, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2127)
!2127 = !{!2128, !2129}
!2128 = !DILocalVariable(name: "s", arg: 1, scope: !2126, file: !1602, line: 12, type: !363)
!2129 = !DILocalVariable(name: "i", scope: !2126, file: !1602, line: 13, type: !2130)
!2130 = !DIBasicType(name: "int", size: 64, encoding: DW_ATE_signed)
!2131 = !DILocation(line: 215, column: 2, scope: !2132, inlinedAt: !2137)
!2132 = distinct !DISubprogram(name: "runtime.putchar", linkageName: "runtime.putchar", scope: !131, file: !131, line: 214, type: !2133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2135)
!2133 = !DISubroutineType(types: !2134)
!2134 = !{!163}
!2135 = !{!2136}
!2136 = !DILocalVariable(name: "c", arg: 1, scope: !2132, file: !131, line: 214, type: !163)
!2137 = distinct !DILocation(line: 14, column: 10, scope: !2126)
!2138 = !DILocation(line: 12, column: 6, scope: !2126)
!2139 = !DILocation(line: 13, column: 6, scope: !2126)
!2140 = !DILocation(line: 13, column: 22, scope: !2126)
!2141 = !DILocation(line: 0, scope: !2126)
!2142 = !DILocation(line: 14, column: 13, scope: !2126)
!2143 = !DILocation(line: 14, column: 11, scope: !2126)
!2144 = !DILocation(line: 14, column: 12, scope: !2126)
!2145 = !DILocation(line: 215, column: 17, scope: !2132, inlinedAt: !2137)
!2146 = !DILocation(line: 216, column: 12, scope: !2132, inlinedAt: !2137)
!2147 = !DILocation(line: 217, column: 2, scope: !2132, inlinedAt: !2137)
!2148 = !DILocation(line: 13, column: 26, scope: !2126)
!2149 = !DILocation(line: 13, column: 14, scope: !2126)
!2150 = !DILocation(line: 13, column: 16, scope: !2126)
!2151 = !DILocation(line: 16, column: 2, scope: !2126)
!2152 = distinct !DISubprogram(name: "runtime.printptr", linkageName: "runtime.printptr", scope: !1602, file: !1602, line: 371, type: !2153, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2155)
!2153 = !DISubroutineType(cc: DW_CC_nocall, types: !2154)
!2154 = !{!21}
!2155 = !{!2156, !2157, !2158}
!2156 = !DILocalVariable(name: "ptr", arg: 1, scope: !2152, file: !1602, line: 371, type: !21)
!2157 = !DILocalVariable(name: "i", scope: !2152, file: !1602, line: 378, type: !2130)
!2158 = !DILocalVariable(name: "nibble", scope: !2152, file: !1602, line: 379, type: !163)
!2159 = !DILocation(line: 215, column: 2, scope: !2132, inlinedAt: !2160)
!2160 = distinct !DILocation(line: 383, column: 11, scope: !2152)
!2161 = !DILocation(line: 215, column: 2, scope: !2132, inlinedAt: !2162)
!2162 = distinct !DILocation(line: 381, column: 11, scope: !2152)
!2163 = !DILocation(line: 215, column: 2, scope: !2132, inlinedAt: !2164)
!2164 = distinct !DILocation(line: 377, column: 9, scope: !2152)
!2165 = !DILocation(line: 215, column: 2, scope: !2132, inlinedAt: !2166)
!2166 = distinct !DILocation(line: 376, column: 9, scope: !2152)
!2167 = !DILocation(line: 215, column: 2, scope: !2132, inlinedAt: !2168)
!2168 = distinct !DILocation(line: 14, column: 10, scope: !2126, inlinedAt: !2169)
!2169 = distinct !DILocation(line: 373, column: 14, scope: !2152)
!2170 = !DILocation(line: 371, column: 6, scope: !2152)
!2171 = !DILocation(line: 372, column: 5, scope: !2152)
!2172 = !DILocation(line: 372, column: 9, scope: !2152)
!2173 = !DILocation(line: 0, scope: !2152)
!2174 = !DILocation(line: 14, column: 13, scope: !2126, inlinedAt: !2169)
!2175 = !DILocation(line: 14, column: 11, scope: !2126, inlinedAt: !2169)
!2176 = !DILocation(line: 215, column: 17, scope: !2132, inlinedAt: !2168)
!2177 = !DILocation(line: 216, column: 12, scope: !2132, inlinedAt: !2168)
!2178 = !DILocation(line: 217, column: 2, scope: !2132, inlinedAt: !2168)
!2179 = !DILocation(line: 13, column: 14, scope: !2126, inlinedAt: !2169)
!2180 = !DILocation(line: 215, column: 17, scope: !2132, inlinedAt: !2166)
!2181 = !DILocation(line: 214, column: 6, scope: !2132, inlinedAt: !2166)
!2182 = !DILocation(line: 216, column: 12, scope: !2132, inlinedAt: !2166)
!2183 = !DILocation(line: 217, column: 2, scope: !2132, inlinedAt: !2166)
!2184 = !DILocation(line: 215, column: 17, scope: !2132, inlinedAt: !2164)
!2185 = !DILocation(line: 214, column: 6, scope: !2132, inlinedAt: !2164)
!2186 = !DILocation(line: 216, column: 12, scope: !2132, inlinedAt: !2164)
!2187 = !DILocation(line: 217, column: 2, scope: !2132, inlinedAt: !2164)
!2188 = !DILocation(line: 378, column: 6, scope: !2152)
!2189 = !DILocation(line: 378, column: 14, scope: !2152)
!2190 = !DILocation(line: 379, column: 18, scope: !2152)
!2191 = !DILocation(line: 379, column: 22, scope: !2152)
!2192 = !DILocation(line: 379, column: 17, scope: !2152)
!2193 = !DILocation(line: 379, column: 3, scope: !2152)
!2194 = !DILocation(line: 380, column: 6, scope: !2152)
!2195 = !DILocation(line: 380, column: 13, scope: !2152)
!2196 = !DILocation(line: 381, column: 12, scope: !2152)
!2197 = !DILocation(line: 381, column: 19, scope: !2152)
!2198 = !DILocation(line: 215, column: 17, scope: !2132, inlinedAt: !2162)
!2199 = !DILocation(line: 214, column: 6, scope: !2132, inlinedAt: !2162)
!2200 = !DILocation(line: 216, column: 12, scope: !2132, inlinedAt: !2162)
!2201 = !DILocation(line: 217, column: 2, scope: !2132, inlinedAt: !2162)
!2202 = !DILocation(line: 385, column: 3, scope: !2152)
!2203 = !DILocation(line: 378, column: 45, scope: !2152)
!2204 = !DILocation(line: 378, column: 16, scope: !2152)
!2205 = !DILocation(line: 383, column: 12, scope: !2152)
!2206 = !DILocation(line: 383, column: 24, scope: !2152)
!2207 = !DILocation(line: 215, column: 17, scope: !2132, inlinedAt: !2160)
!2208 = !DILocation(line: 214, column: 6, scope: !2132, inlinedAt: !2160)
!2209 = !DILocation(line: 216, column: 12, scope: !2132, inlinedAt: !2160)
!2210 = !DILocation(line: 217, column: 2, scope: !2132, inlinedAt: !2160)
!2211 = distinct !DISubprogram(name: "runtime.printnl", linkageName: "runtime.printnl", scope: !1602, file: !1602, line: 286, type: !2212, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496)
!2212 = !DISubroutineType(cc: DW_CC_nocall, types: !15)
!2213 = !DILocation(line: 215, column: 2, scope: !2132, inlinedAt: !2214)
!2214 = distinct !DILocation(line: 290, column: 9, scope: !2211)
!2215 = !DILocation(line: 215, column: 17, scope: !2132, inlinedAt: !2214)
!2216 = !DILocation(line: 214, column: 6, scope: !2132, inlinedAt: !2214)
!2217 = !DILocation(line: 216, column: 12, scope: !2132, inlinedAt: !2214)
!2218 = !DILocation(line: 217, column: 2, scope: !2132, inlinedAt: !2214)
!2219 = !DILocation(line: 291, column: 2, scope: !2211)
!2220 = distinct !DISubprogram(name: "runtime.nilPanic", linkageName: "runtime.nilPanic", scope: !105, file: !105, line: 183, type: !2212, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496)
!2221 = !DILocation(line: 184, column: 30, scope: !2220)
!2222 = !DILocation(line: 184, column: 16, scope: !2220)
!2223 = !DILocation(line: 185, column: 2, scope: !2220)
!2224 = distinct !DISubprogram(name: "runtime.lookupPanic", linkageName: "runtime.lookupPanic", scope: !105, file: !105, line: 193, type: !2212, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496)
!2225 = !DILocation(line: 194, column: 30, scope: !2224)
!2226 = !DILocation(line: 194, column: 16, scope: !2224)
!2227 = !DILocation(line: 195, column: 2, scope: !2224)
!2228 = distinct !DISubprogram(name: "runtime.panicOrGoexit", linkageName: "runtime.panicOrGoexit", scope: !105, file: !105, line: 58, type: !2229, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2232)
!2229 = !DISubroutineType(cc: DW_CC_nocall, types: !2230)
!2230 = !{!502, !2231}
!2231 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.panicState", baseType: !45)
!2232 = !{!2233, !2234, !2235, !2247, !2248}
!2233 = !DILocalVariable(name: "message", arg: 1, scope: !2228, file: !105, line: 58, type: !502)
!2234 = !DILocalVariable(name: "panicking", arg: 2, scope: !2228, file: !105, line: 58, type: !2231)
!2235 = !DILocalVariable(name: "frame", scope: !2228, file: !105, line: 65, type: !2236)
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2237, size: 64, align: 64, dwarfAddressSpace: 0)
!2237 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.deferFrame", baseType: !2238)
!2238 = !DICompositeType(tag: DW_TAG_structure_type, size: 384, align: 64, elements: !2239)
!2239 = !{!2240, !2241, !2242, !2244, !2245, !2246}
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "JumpSP", baseType: !9, size: 64, align: 64)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "JumpPC", baseType: !9, size: 64, align: 64, offset: 64)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "ExtraRegs", baseType: !2243, align: 64, offset: 128)
!2243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, align: 64, elements: !968)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "Previous", baseType: !2236, size: 64, align: 64, offset: 128)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "Panicking", baseType: !2231, size: 8, align: 8, offset: 192)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "PanicValue", baseType: !502, size: 128, align: 64, offset: 256)
!2247 = !DILocalVariable(name: "PanicValue", scope: !2228, file: !105, line: 42, type: !502)
!2248 = !DILocalVariable(name: "Panicking", scope: !2228, file: !105, line: 41, type: !2231)
!2249 = !DILocation(line: 58, column: 6, scope: !2228)
!2250 = !DILocation(line: 62, column: 34, scope: !1890, inlinedAt: !2251)
!2251 = distinct !DILocation(line: 65, column: 38, scope: !2228)
!2252 = !DILocation(line: 62, column: 2, scope: !1890, inlinedAt: !2251)
!2253 = !DILocation(line: 63, column: 5, scope: !1890, inlinedAt: !2251)
!2254 = !DILocation(line: 63, column: 7, scope: !1890, inlinedAt: !2251)
!2255 = !DILocation(line: 0, scope: !1890, inlinedAt: !2251)
!2256 = !DILocation(line: 64, column: 15, scope: !1890, inlinedAt: !2251)
!2257 = !DILocation(line: 66, column: 9, scope: !1890, inlinedAt: !2251)
!2258 = !DILocation(line: 65, column: 41, scope: !2228)
!2259 = !DILocation(line: 65, column: 3, scope: !2228)
!2260 = !DILocation(line: 66, column: 6, scope: !2228)
!2261 = !DILocation(line: 66, column: 12, scope: !2228)
!2262 = !DILocation(line: 0, scope: !2228)
!2263 = !DILocation(line: 67, column: 4, scope: !2228)
!2264 = !DILocation(line: 67, column: 23, scope: !2228)
!2265 = !DILocation(line: 67, column: 10, scope: !2228)
!2266 = !DILocation(line: 68, column: 4, scope: !2228)
!2267 = !DILocation(line: 68, column: 22, scope: !2228)
!2268 = !DILocation(line: 68, column: 10, scope: !2228)
!2269 = !DILocation(line: 69, column: 19, scope: !2228)
!2270 = !DILocation(line: 69, column: 18, scope: !2228)
!2271 = !DILocation(line: 73, column: 5, scope: !2228)
!2272 = !DILocation(line: 78, column: 13, scope: !2228)
!2273 = !DILocation(line: 79, column: 11, scope: !2228)
!2274 = !DILocation(line: 79, column: 10, scope: !2228)
!2275 = !DILocation(line: 80, column: 9, scope: !2228)
!2276 = !DILocation(line: 81, column: 7, scope: !2228)
!2277 = !DILocation(line: 82, column: 2, scope: !2228)
!2278 = distinct !DISubprogram(name: "runtime.printitf", linkageName: "runtime.printitf", scope: !1602, file: !1602, line: 293, type: !2279, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2281)
!2279 = !DISubroutineType(cc: DW_CC_nocall, types: !2280)
!2280 = !{!502}
!2281 = !{!2282, !2283, !2284, !2285, !2286, !2288, !2289, !2290, !2292, !2293, !2294, !2295, !2296, !2297, !2299, !2300, !2302, !2304, !2305, !2306, !2308}
!2282 = !DILocalVariable(name: "msg", arg: 1, scope: !2278, file: !1602, line: 293, type: !502)
!2283 = !DILocalVariable(name: "msg", scope: !2278, file: !1602, line: 294, type: !47)
!2284 = !DILocalVariable(name: "msg", scope: !2278, file: !1602, line: 294, type: !2130)
!2285 = !DILocalVariable(name: "msg", scope: !2278, file: !1602, line: 294, type: !91)
!2286 = !DILocalVariable(name: "msg", scope: !2278, file: !1602, line: 294, type: !2287)
!2287 = !DIBasicType(name: "int16", size: 16, encoding: DW_ATE_signed)
!2288 = !DILocalVariable(name: "msg", scope: !2278, file: !1602, line: 294, type: !60)
!2289 = !DILocalVariable(name: "msg", scope: !2278, file: !1602, line: 294, type: !1699)
!2290 = !DILocalVariable(name: "msg", scope: !2278, file: !1602, line: 294, type: !2291)
!2291 = !DIBasicType(name: "uint", size: 64, encoding: DW_ATE_unsigned)
!2292 = !DILocalVariable(name: "msg", scope: !2278, file: !1602, line: 294, type: !45)
!2293 = !DILocalVariable(name: "msg", scope: !2278, file: !1602, line: 294, type: !98)
!2294 = !DILocalVariable(name: "msg", scope: !2278, file: !1602, line: 294, type: !43)
!2295 = !DILocalVariable(name: "msg", scope: !2278, file: !1602, line: 294, type: !11)
!2296 = !DILocalVariable(name: "msg", scope: !2278, file: !1602, line: 294, type: !21)
!2297 = !DILocalVariable(name: "msg", scope: !2278, file: !1602, line: 294, type: !2298)
!2298 = !DIBasicType(name: "float32", size: 32, encoding: DW_ATE_float)
!2299 = !DILocalVariable(name: "msg", scope: !2278, file: !1602, line: 294, type: !520)
!2300 = !DILocalVariable(name: "msg", scope: !2278, file: !1602, line: 294, type: !2301)
!2301 = !DIBasicType(name: "complex64", size: 64, encoding: DW_ATE_complex_float)
!2302 = !DILocalVariable(name: "msg", scope: !2278, file: !1602, line: 294, type: !2303)
!2303 = !DIBasicType(name: "complex128", size: 128, encoding: DW_ATE_complex_float)
!2304 = !DILocalVariable(name: "msg", scope: !2278, file: !1602, line: 294, type: !363)
!2305 = !DILocalVariable(name: "msg", scope: !2278, file: !1602, line: 294, type: !501)
!2306 = !DILocalVariable(name: "msg", scope: !2278, file: !1602, line: 294, type: !2307)
!2307 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.stringer", baseType: !502)
!2308 = !DILocalVariable(name: "itf", scope: !2278, file: !1602, line: 345, type: !502)
!2309 = !DILocation(line: 215, column: 2, scope: !2132, inlinedAt: !2310)
!2310 = distinct !DILocation(line: 14, column: 10, scope: !2126, inlinedAt: !2311)
!2311 = distinct !DILocation(line: 338, column: 14, scope: !2278)
!2312 = !DILocation(line: 293, column: 6, scope: !2278)
!2313 = !DILocation(line: 294, column: 16, scope: !2278)
!2314 = !DILocation(line: 338, column: 15, scope: !2278)
!2315 = !DILocation(line: 12, column: 6, scope: !2126, inlinedAt: !2311)
!2316 = !DILocation(line: 13, column: 6, scope: !2126, inlinedAt: !2311)
!2317 = !DILocation(line: 13, column: 22, scope: !2126, inlinedAt: !2311)
!2318 = !DILocation(line: 0, scope: !2126, inlinedAt: !2311)
!2319 = !DILocation(line: 14, column: 13, scope: !2126, inlinedAt: !2311)
!2320 = !DILocation(line: 14, column: 11, scope: !2126, inlinedAt: !2311)
!2321 = !DILocation(line: 14, column: 12, scope: !2126, inlinedAt: !2311)
!2322 = !DILocation(line: 215, column: 17, scope: !2132, inlinedAt: !2310)
!2323 = !DILocation(line: 216, column: 12, scope: !2132, inlinedAt: !2310)
!2324 = !DILocation(line: 217, column: 2, scope: !2132, inlinedAt: !2310)
!2325 = !DILocation(line: 13, column: 26, scope: !2126, inlinedAt: !2311)
!2326 = !DILocation(line: 13, column: 14, scope: !2126, inlinedAt: !2311)
!2327 = !DILocation(line: 13, column: 16, scope: !2126, inlinedAt: !2311)
!2328 = !DILocation(line: 352, column: 2, scope: !2278)
!2329 = distinct !DISubprogram(name: "runtime._panic", linkageName: "runtime._panic", scope: !105, file: !105, line: 54, type: !2279, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2330)
!2330 = !{!2331}
!2331 = !DILocalVariable(name: "message", arg: 1, scope: !2329, file: !105, line: 54, type: !502)
!2332 = !DILocation(line: 54, column: 6, scope: !2329)
!2333 = !DILocation(line: 55, column: 16, scope: !2329)
!2334 = !DILocation(line: 55, column: 15, scope: !2329)
!2335 = !DILocation(line: 56, column: 2, scope: !2329)
!2336 = distinct !DISubprogram(name: "runtime.fminimum", linkageName: "fminimum", scope: !1505, file: !1505, line: 60, type: !2337, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2339)
!2337 = !DISubroutineType(types: !2338)
!2338 = !{!520, !520}
!2339 = !{!2340, !2341}
!2340 = !DILocalVariable(name: "x", arg: 1, scope: !2336, file: !1505, line: 60, type: !520)
!2341 = !DILocalVariable(name: "y", arg: 2, scope: !2336, file: !1505, line: 60, type: !520)
!2342 = !DILocation(line: 60, column: 6, scope: !2336)
!2343 = !DILocation(line: 61, column: 24, scope: !2336)
!2344 = !DILocation(line: 61, column: 27, scope: !2336)
!2345 = !DILocalVariable(name: "x", arg: 1, scope: !2346, file: !1505, line: 87, type: !520)
!2346 = distinct !DISubprogram(name: "runtime.minimumFloat64", linkageName: "runtime.minimumFloat64", scope: !1505, file: !1505, line: 87, type: !2337, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2347)
!2347 = !{!2345, !2348}
!2348 = !DILocalVariable(name: "y", arg: 2, scope: !2346, file: !1505, line: 87, type: !520)
!2349 = !DILocation(line: 87, column: 6, scope: !2346, inlinedAt: !2350)
!2350 = distinct !DILocation(line: 61, column: 23, scope: !2336)
!2351 = !DILocation(line: 88, column: 38, scope: !2346, inlinedAt: !2350)
!2352 = !DILocation(line: 88, column: 41, scope: !2346, inlinedAt: !2350)
!2353 = !DILocalVariable(name: "x", arg: 1, scope: !2354, file: !1505, line: 101, type: !520)
!2354 = distinct !DISubprogram(name: "runtime.minimumFloat[float64 int64]", linkageName: "runtime.minimumFloat[float64 int64]", scope: !1505, file: !1505, line: 101, type: !2355, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2357)
!2355 = !DISubroutineType(types: !2356)
!2356 = !{!520, !520, !1699, !1699}
!2357 = !{!2353, !2358, !2359, !2360, !2361, !2362}
!2358 = !DILocalVariable(name: "y", arg: 2, scope: !2354, file: !1505, line: 101, type: !520)
!2359 = !DILocalVariable(name: "minPosNaN", arg: 3, scope: !2354, file: !1505, line: 101, type: !1699)
!2360 = !DILocalVariable(name: "magMask", arg: 4, scope: !2354, file: !1505, line: 101, type: !1699)
!2361 = !DILocalVariable(name: "xBits", scope: !2354, file: !1505, line: 102, type: !502)
!2362 = !DILocalVariable(name: "yBits", scope: !2354, file: !1505, line: 103, type: !502)
!2363 = !DILocation(line: 101, column: 6, scope: !2354, inlinedAt: !2364)
!2364 = distinct !DILocation(line: 88, column: 37, scope: !2346, inlinedAt: !2350)
!2365 = !DILocation(line: 102, column: 11, scope: !2354, inlinedAt: !2364)
!2366 = !DILocation(line: 102, column: 2, scope: !2354, inlinedAt: !2364)
!2367 = !DILocation(line: 103, column: 11, scope: !2354, inlinedAt: !2364)
!2368 = !DILocation(line: 103, column: 2, scope: !2354, inlinedAt: !2364)
!2369 = !DILocation(line: 107, column: 7, scope: !2354, inlinedAt: !2364)
!2370 = !DILocation(line: 107, column: 16, scope: !2354, inlinedAt: !2364)
!2371 = !DILocation(line: 107, column: 13, scope: !2354, inlinedAt: !2364)
!2372 = !DILocation(line: 0, scope: !2354, inlinedAt: !2364)
!2373 = !DILocation(line: 109, column: 7, scope: !2354, inlinedAt: !2364)
!2374 = !DILocation(line: 109, column: 16, scope: !2354, inlinedAt: !2364)
!2375 = !DILocation(line: 109, column: 13, scope: !2354, inlinedAt: !2364)
!2376 = !DILocation(line: 118, column: 5, scope: !2354, inlinedAt: !2364)
!2377 = !DILocation(line: 118, column: 11, scope: !2354, inlinedAt: !2364)
!2378 = !DILocation(line: 121, column: 5, scope: !2354, inlinedAt: !2364)
!2379 = !DILocation(line: 121, column: 11, scope: !2354, inlinedAt: !2364)
!2380 = !DILocation(line: 124, column: 5, scope: !2354, inlinedAt: !2364)
!2381 = !DILocation(line: 124, column: 14, scope: !2354, inlinedAt: !2364)
!2382 = !DILocation(line: 124, column: 11, scope: !2354, inlinedAt: !2364)
!2383 = !DILocation(line: 61, column: 2, scope: !2336)
!2384 = distinct !DISubprogram(name: "runtime.fminimumf", linkageName: "fminimumf", scope: !1505, file: !1505, line: 65, type: !2385, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2387)
!2385 = !DISubroutineType(types: !2386)
!2386 = !{!2298, !2298}
!2387 = !{!2388, !2389}
!2388 = !DILocalVariable(name: "x", arg: 1, scope: !2384, file: !1505, line: 65, type: !2298)
!2389 = !DILocalVariable(name: "y", arg: 2, scope: !2384, file: !1505, line: 65, type: !2298)
!2390 = !DILocation(line: 65, column: 6, scope: !2384)
!2391 = !DILocation(line: 66, column: 24, scope: !2384)
!2392 = !DILocation(line: 66, column: 27, scope: !2384)
!2393 = !DILocalVariable(name: "x", arg: 1, scope: !2394, file: !1505, line: 83, type: !2298)
!2394 = distinct !DISubprogram(name: "runtime.minimumFloat32", linkageName: "runtime.minimumFloat32", scope: !1505, file: !1505, line: 83, type: !2385, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2395)
!2395 = !{!2393, !2396}
!2396 = !DILocalVariable(name: "y", arg: 2, scope: !2394, file: !1505, line: 83, type: !2298)
!2397 = !DILocation(line: 83, column: 6, scope: !2394, inlinedAt: !2398)
!2398 = distinct !DILocation(line: 66, column: 23, scope: !2384)
!2399 = !DILocation(line: 84, column: 38, scope: !2394, inlinedAt: !2398)
!2400 = !DILocation(line: 84, column: 41, scope: !2394, inlinedAt: !2398)
!2401 = !DILocalVariable(name: "x", arg: 1, scope: !2402, file: !1505, line: 101, type: !2298)
!2402 = distinct !DISubprogram(name: "runtime.minimumFloat[float32 int32]", linkageName: "runtime.minimumFloat[float32 int32]", scope: !1505, file: !1505, line: 101, type: !2403, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2405)
!2403 = !DISubroutineType(types: !2404)
!2404 = !{!2298, !2298, !60, !60}
!2405 = !{!2401, !2406, !2407, !2408, !2409, !2410}
!2406 = !DILocalVariable(name: "y", arg: 2, scope: !2402, file: !1505, line: 101, type: !2298)
!2407 = !DILocalVariable(name: "minPosNaN", arg: 3, scope: !2402, file: !1505, line: 101, type: !60)
!2408 = !DILocalVariable(name: "magMask", arg: 4, scope: !2402, file: !1505, line: 101, type: !60)
!2409 = !DILocalVariable(name: "xBits", scope: !2402, file: !1505, line: 102, type: !502)
!2410 = !DILocalVariable(name: "yBits", scope: !2402, file: !1505, line: 103, type: !502)
!2411 = !DILocation(line: 101, column: 6, scope: !2402, inlinedAt: !2412)
!2412 = distinct !DILocation(line: 84, column: 37, scope: !2394, inlinedAt: !2398)
!2413 = !DILocation(line: 102, column: 11, scope: !2402, inlinedAt: !2412)
!2414 = !DILocation(line: 102, column: 2, scope: !2402, inlinedAt: !2412)
!2415 = !DILocation(line: 103, column: 11, scope: !2402, inlinedAt: !2412)
!2416 = !DILocation(line: 103, column: 2, scope: !2402, inlinedAt: !2412)
!2417 = !DILocation(line: 107, column: 7, scope: !2402, inlinedAt: !2412)
!2418 = !DILocation(line: 107, column: 16, scope: !2402, inlinedAt: !2412)
!2419 = !DILocation(line: 107, column: 13, scope: !2402, inlinedAt: !2412)
!2420 = !DILocation(line: 0, scope: !2402, inlinedAt: !2412)
!2421 = !DILocation(line: 109, column: 7, scope: !2402, inlinedAt: !2412)
!2422 = !DILocation(line: 109, column: 16, scope: !2402, inlinedAt: !2412)
!2423 = !DILocation(line: 109, column: 13, scope: !2402, inlinedAt: !2412)
!2424 = !DILocation(line: 118, column: 5, scope: !2402, inlinedAt: !2412)
!2425 = !DILocation(line: 118, column: 11, scope: !2402, inlinedAt: !2412)
!2426 = !DILocation(line: 121, column: 5, scope: !2402, inlinedAt: !2412)
!2427 = !DILocation(line: 121, column: 11, scope: !2402, inlinedAt: !2412)
!2428 = !DILocation(line: 124, column: 5, scope: !2402, inlinedAt: !2412)
!2429 = !DILocation(line: 124, column: 14, scope: !2402, inlinedAt: !2412)
!2430 = !DILocation(line: 124, column: 11, scope: !2402, inlinedAt: !2412)
!2431 = !DILocation(line: 66, column: 2, scope: !2384)
!2432 = distinct !DISubprogram(name: "runtime.fmaximum", linkageName: "fmaximum", scope: !1505, file: !1505, line: 70, type: !2337, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2433)
!2433 = !{!2434, !2435}
!2434 = !DILocalVariable(name: "x", arg: 1, scope: !2432, file: !1505, line: 70, type: !520)
!2435 = !DILocalVariable(name: "y", arg: 2, scope: !2432, file: !1505, line: 70, type: !520)
!2436 = !DILocation(line: 70, column: 6, scope: !2432)
!2437 = !DILocation(line: 71, column: 24, scope: !2432)
!2438 = !DILocation(line: 71, column: 27, scope: !2432)
!2439 = !DILocalVariable(name: "x", arg: 1, scope: !2440, file: !1505, line: 95, type: !520)
!2440 = distinct !DISubprogram(name: "runtime.maximumFloat64", linkageName: "runtime.maximumFloat64", scope: !1505, file: !1505, line: 95, type: !2337, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2441)
!2441 = !{!2439, !2442}
!2442 = !DILocalVariable(name: "y", arg: 2, scope: !2440, file: !1505, line: 95, type: !520)
!2443 = !DILocation(line: 95, column: 6, scope: !2440, inlinedAt: !2444)
!2444 = distinct !DILocation(line: 71, column: 23, scope: !2432)
!2445 = !DILocation(line: 96, column: 38, scope: !2440, inlinedAt: !2444)
!2446 = !DILocation(line: 96, column: 41, scope: !2440, inlinedAt: !2444)
!2447 = !DILocalVariable(name: "x", arg: 1, scope: !2448, file: !1505, line: 133, type: !520)
!2448 = distinct !DISubprogram(name: "runtime.maximumFloat[float64 int64]", linkageName: "runtime.maximumFloat[float64 int64]", scope: !1505, file: !1505, line: 133, type: !2355, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2449)
!2449 = !{!2447, !2450, !2451, !2452, !2453, !2454, !2455}
!2450 = !DILocalVariable(name: "y", arg: 2, scope: !2448, file: !1505, line: 133, type: !520)
!2451 = !DILocalVariable(name: "minPosNaN", arg: 3, scope: !2448, file: !1505, line: 133, type: !1699)
!2452 = !DILocalVariable(name: "magMask", arg: 4, scope: !2448, file: !1505, line: 133, type: !1699)
!2453 = !DILocalVariable(name: "xBits", scope: !2448, file: !1505, line: 134, type: !502)
!2454 = !DILocalVariable(name: "yBits", scope: !2448, file: !1505, line: 135, type: !502)
!2455 = !DILocalVariable(name: "maxNegNaN", scope: !2448, file: !1505, line: 149, type: !502)
!2456 = !DILocation(line: 133, column: 6, scope: !2448, inlinedAt: !2457)
!2457 = distinct !DILocation(line: 96, column: 37, scope: !2440, inlinedAt: !2444)
!2458 = !DILocation(line: 134, column: 11, scope: !2448, inlinedAt: !2457)
!2459 = !DILocation(line: 134, column: 2, scope: !2448, inlinedAt: !2457)
!2460 = !DILocation(line: 135, column: 11, scope: !2448, inlinedAt: !2457)
!2461 = !DILocation(line: 135, column: 2, scope: !2448, inlinedAt: !2457)
!2462 = !DILocation(line: 142, column: 5, scope: !2448, inlinedAt: !2457)
!2463 = !DILocation(line: 142, column: 11, scope: !2448, inlinedAt: !2457)
!2464 = !DILocation(line: 0, scope: !2448, inlinedAt: !2457)
!2465 = !DILocation(line: 145, column: 5, scope: !2448, inlinedAt: !2457)
!2466 = !DILocation(line: 145, column: 11, scope: !2448, inlinedAt: !2457)
!2467 = !DILocation(line: 149, column: 16, scope: !2448, inlinedAt: !2457)
!2468 = !DILocation(line: 149, column: 2, scope: !2448, inlinedAt: !2457)
!2469 = !DILocation(line: 151, column: 7, scope: !2448, inlinedAt: !2457)
!2470 = !DILocation(line: 151, column: 16, scope: !2448, inlinedAt: !2457)
!2471 = !DILocation(line: 151, column: 13, scope: !2448, inlinedAt: !2457)
!2472 = !DILocation(line: 153, column: 7, scope: !2448, inlinedAt: !2457)
!2473 = !DILocation(line: 153, column: 16, scope: !2448, inlinedAt: !2457)
!2474 = !DILocation(line: 153, column: 13, scope: !2448, inlinedAt: !2457)
!2475 = !DILocation(line: 156, column: 5, scope: !2448, inlinedAt: !2457)
!2476 = !DILocation(line: 156, column: 14, scope: !2448, inlinedAt: !2457)
!2477 = !DILocation(line: 156, column: 11, scope: !2448, inlinedAt: !2457)
!2478 = !DILocation(line: 71, column: 2, scope: !2432)
!2479 = distinct !DISubprogram(name: "runtime.fmaximumf", linkageName: "fmaximumf", scope: !1505, file: !1505, line: 75, type: !2385, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2480)
!2480 = !{!2481, !2482}
!2481 = !DILocalVariable(name: "x", arg: 1, scope: !2479, file: !1505, line: 75, type: !2298)
!2482 = !DILocalVariable(name: "y", arg: 2, scope: !2479, file: !1505, line: 75, type: !2298)
!2483 = !DILocation(line: 75, column: 6, scope: !2479)
!2484 = !DILocation(line: 76, column: 24, scope: !2479)
!2485 = !DILocation(line: 76, column: 27, scope: !2479)
!2486 = !DILocalVariable(name: "x", arg: 1, scope: !2487, file: !1505, line: 91, type: !2298)
!2487 = distinct !DISubprogram(name: "runtime.maximumFloat32", linkageName: "runtime.maximumFloat32", scope: !1505, file: !1505, line: 91, type: !2385, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2488)
!2488 = !{!2486, !2489}
!2489 = !DILocalVariable(name: "y", arg: 2, scope: !2487, file: !1505, line: 91, type: !2298)
!2490 = !DILocation(line: 91, column: 6, scope: !2487, inlinedAt: !2491)
!2491 = distinct !DILocation(line: 76, column: 23, scope: !2479)
!2492 = !DILocation(line: 92, column: 38, scope: !2487, inlinedAt: !2491)
!2493 = !DILocation(line: 92, column: 41, scope: !2487, inlinedAt: !2491)
!2494 = !DILocalVariable(name: "x", arg: 1, scope: !2495, file: !1505, line: 133, type: !2298)
!2495 = distinct !DISubprogram(name: "runtime.maximumFloat[float32 int32]", linkageName: "runtime.maximumFloat[float32 int32]", scope: !1505, file: !1505, line: 133, type: !2403, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2496)
!2496 = !{!2494, !2497, !2498, !2499, !2500, !2501, !2502}
!2497 = !DILocalVariable(name: "y", arg: 2, scope: !2495, file: !1505, line: 133, type: !2298)
!2498 = !DILocalVariable(name: "minPosNaN", arg: 3, scope: !2495, file: !1505, line: 133, type: !60)
!2499 = !DILocalVariable(name: "magMask", arg: 4, scope: !2495, file: !1505, line: 133, type: !60)
!2500 = !DILocalVariable(name: "xBits", scope: !2495, file: !1505, line: 134, type: !502)
!2501 = !DILocalVariable(name: "yBits", scope: !2495, file: !1505, line: 135, type: !502)
!2502 = !DILocalVariable(name: "maxNegNaN", scope: !2495, file: !1505, line: 149, type: !502)
!2503 = !DILocation(line: 133, column: 6, scope: !2495, inlinedAt: !2504)
!2504 = distinct !DILocation(line: 92, column: 37, scope: !2487, inlinedAt: !2491)
!2505 = !DILocation(line: 134, column: 11, scope: !2495, inlinedAt: !2504)
!2506 = !DILocation(line: 134, column: 2, scope: !2495, inlinedAt: !2504)
!2507 = !DILocation(line: 135, column: 11, scope: !2495, inlinedAt: !2504)
!2508 = !DILocation(line: 135, column: 2, scope: !2495, inlinedAt: !2504)
!2509 = !DILocation(line: 142, column: 5, scope: !2495, inlinedAt: !2504)
!2510 = !DILocation(line: 142, column: 11, scope: !2495, inlinedAt: !2504)
!2511 = !DILocation(line: 0, scope: !2495, inlinedAt: !2504)
!2512 = !DILocation(line: 145, column: 5, scope: !2495, inlinedAt: !2504)
!2513 = !DILocation(line: 145, column: 11, scope: !2495, inlinedAt: !2504)
!2514 = !DILocation(line: 149, column: 16, scope: !2495, inlinedAt: !2504)
!2515 = !DILocation(line: 149, column: 2, scope: !2495, inlinedAt: !2504)
!2516 = !DILocation(line: 151, column: 7, scope: !2495, inlinedAt: !2504)
!2517 = !DILocation(line: 151, column: 16, scope: !2495, inlinedAt: !2504)
!2518 = !DILocation(line: 151, column: 13, scope: !2495, inlinedAt: !2504)
!2519 = !DILocation(line: 153, column: 7, scope: !2495, inlinedAt: !2504)
!2520 = !DILocation(line: 153, column: 16, scope: !2495, inlinedAt: !2504)
!2521 = !DILocation(line: 153, column: 13, scope: !2495, inlinedAt: !2504)
!2522 = !DILocation(line: 156, column: 5, scope: !2495, inlinedAt: !2504)
!2523 = !DILocation(line: 156, column: 14, scope: !2495, inlinedAt: !2504)
!2524 = !DILocation(line: 156, column: 11, scope: !2495, inlinedAt: !2504)
!2525 = !DILocation(line: 76, column: 2, scope: !2479)
!2526 = distinct !DISubprogram(name: "runtime.gcCallback", linkageName: "tinygo_runtime_bdwgc_callback", scope: !102, file: !102, line: 46, type: !1891, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496)
!2527 = !DILocation(line: 62, column: 34, scope: !1890, inlinedAt: !2528)
!2528 = distinct !DILocation(line: 193, column: 20, scope: !2529, inlinedAt: !2537)
!2529 = distinct !DISubprogram(name: "internal/task.GCStopWorldAndScan", linkageName: "internal/task.GCStopWorldAndScan", scope: !2, file: !2, line: 192, type: !1891, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1462, retainedNodes: !2530)
!2530 = !{!2531, !2532, !2533, !2534, !2535, !2536}
!2531 = !DILocalVariable(name: "current", scope: !2529, file: !2, line: 193, type: !3)
!2532 = !DILocalVariable(name: "otherGoroutines", scope: !2529, file: !2, line: 99, type: !43)
!2533 = !DILocalVariable(name: "scanWaitGroup", scope: !2529, file: !2, line: 151, type: !79)
!2534 = !DILocalVariable(name: "activeTasks", scope: !2529, file: !2, line: 45, type: !3)
!2535 = !DILocalVariable(name: "t", scope: !2529, file: !2, line: 212, type: !3)
!2536 = !DILocalVariable(name: "t", scope: !2529, file: !2, line: 223, type: !3)
!2537 = distinct !DILocation(line: 8, column: 25, scope: !2538, inlinedAt: !2539)
!2538 = distinct !DISubprogram(name: "runtime.gcMarkReachable", linkageName: "runtime.gcMarkReachable", scope: !2033, file: !2033, line: 7, type: !1891, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496)
!2539 = distinct !DILocation(line: 48, column: 17, scope: !2526)
!2540 = !DILocation(line: 62, column: 2, scope: !1890, inlinedAt: !2528)
!2541 = !DILocation(line: 63, column: 5, scope: !1890, inlinedAt: !2528)
!2542 = !DILocation(line: 63, column: 7, scope: !1890, inlinedAt: !2528)
!2543 = !DILocation(line: 0, scope: !1890, inlinedAt: !2528)
!2544 = !DILocation(line: 64, column: 15, scope: !1890, inlinedAt: !2528)
!2545 = !DILocation(line: 66, column: 9, scope: !1890, inlinedAt: !2528)
!2546 = !DILocation(line: 193, column: 2, scope: !2529, inlinedAt: !2537)
!2547 = !DILocation(line: 147, column: 18, scope: !1940, inlinedAt: !2548)
!2548 = distinct !DILocation(line: 196, column: 17, scope: !2529, inlinedAt: !2537)
!2549 = !DILocation(line: 147, column: 53, scope: !1940, inlinedAt: !2548)
!2550 = !DILocation(line: 183, column: 6, scope: !1948, inlinedAt: !2551)
!2551 = distinct !DILocation(line: 147, column: 51, scope: !1940, inlinedAt: !2548)
!2552 = !DILocation(line: 196, column: 20, scope: !2529, inlinedAt: !2537)
!2553 = !DILocation(line: 0, scope: !2529, inlinedAt: !2537)
!2554 = !DILocation(line: 31, column: 17, scope: !1795, inlinedAt: !2555)
!2555 = distinct !DILocation(line: 199, column: 22, scope: !2529, inlinedAt: !2537)
!2556 = !DILocation(line: 33, column: 5, scope: !1795, inlinedAt: !2555)
!2557 = !DILocation(line: 156, column: 18, scope: !1802, inlinedAt: !2558)
!2558 = distinct !DILocation(line: 33, column: 27, scope: !1795, inlinedAt: !2555)
!2559 = !DILocation(line: 157, column: 31, scope: !1802, inlinedAt: !2558)
!2560 = !DILocation(line: 157, column: 36, scope: !1802, inlinedAt: !2558)
!2561 = !DILocation(line: 157, column: 41, scope: !1802, inlinedAt: !2558)
!2562 = !DILocation(line: 99, column: 6, scope: !1814, inlinedAt: !2563)
!2563 = distinct !DILocation(line: 157, column: 29, scope: !1802, inlinedAt: !2558)
!2564 = !DILocation(line: 0, scope: !1795, inlinedAt: !2555)
!2565 = !DILocation(line: 43, column: 6, scope: !1795, inlinedAt: !2555)
!2566 = !DILocation(line: 153, column: 18, scope: !1746, inlinedAt: !2567)
!2567 = distinct !DILocation(line: 43, column: 18, scope: !1795, inlinedAt: !2555)
!2568 = !DILocation(line: 153, column: 69, scope: !1746, inlinedAt: !2567)
!2569 = !DILocation(line: 153, column: 74, scope: !1746, inlinedAt: !2567)
!2570 = !DILocation(line: 77, column: 6, scope: !1758, inlinedAt: !2571)
!2571 = distinct !DILocation(line: 153, column: 67, scope: !1746, inlinedAt: !2567)
!2572 = !DILocation(line: 43, column: 22, scope: !1795, inlinedAt: !2555)
!2573 = !DILocation(line: 45, column: 3, scope: !1795, inlinedAt: !2555)
!2574 = !DILocation(line: 26, column: 46, scope: !1833, inlinedAt: !2575)
!2575 = distinct !DILocation(line: 45, column: 15, scope: !1795, inlinedAt: !2555)
!2576 = !DILocation(line: 26, column: 58, scope: !1833, inlinedAt: !2575)
!2577 = !DILocation(line: 26, column: 19, scope: !1833, inlinedAt: !2575)
!2578 = !DILocalVariable(name: "wg", arg: 1, scope: !2579, file: !2, line: 169, type: !1910)
!2579 = distinct !DISubprogram(name: "(*internal/task.waitGroup).wait", linkageName: "(*internal/task.waitGroup).wait", scope: !2, file: !2, line: 169, type: !1908, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1462, retainedNodes: !2580)
!2580 = !{!2578, !2581}
!2581 = !DILocalVariable(name: "val", scope: !2579, file: !2, line: 171, type: !43)
!2582 = !DILocation(line: 169, column: 22, scope: !2579, inlinedAt: !2583)
!2583 = distinct !DILocation(line: 202, column: 21, scope: !2529, inlinedAt: !2537)
!2584 = !DILocation(line: 147, column: 18, scope: !1940, inlinedAt: !2585)
!2585 = distinct !DILocation(line: 171, column: 19, scope: !2579, inlinedAt: !2583)
!2586 = !DILocation(line: 147, column: 53, scope: !1940, inlinedAt: !2585)
!2587 = !DILocation(line: 183, column: 6, scope: !1948, inlinedAt: !2588)
!2588 = distinct !DILocation(line: 147, column: 51, scope: !1940, inlinedAt: !2585)
!2589 = !DILocation(line: 172, column: 10, scope: !2579, inlinedAt: !2583)
!2590 = !DILocation(line: 0, scope: !2579, inlinedAt: !2583)
!2591 = !DILocation(line: 175, column: 3, scope: !2579, inlinedAt: !2583)
!2592 = !DILocation(line: 175, column: 13, scope: !2579, inlinedAt: !2583)
!2593 = !DILocation(line: 26, column: 46, scope: !1833, inlinedAt: !2594)
!2594 = distinct !DILocation(line: 175, column: 12, scope: !2579, inlinedAt: !2583)
!2595 = !DILocation(line: 26, column: 58, scope: !1833, inlinedAt: !2594)
!2596 = !DILocation(line: 26, column: 19, scope: !1833, inlinedAt: !2594)
!2597 = !DILocation(line: 172, column: 6, scope: !2579, inlinedAt: !2583)
!2598 = !DILocation(line: 150, column: 18, scope: !2043, inlinedAt: !2599)
!2599 = distinct !DILocation(line: 206, column: 16, scope: !2529, inlinedAt: !2537)
!2600 = !DILocation(line: 150, column: 51, scope: !2043, inlinedAt: !2599)
!2601 = !DILocation(line: 150, column: 56, scope: !2043, inlinedAt: !2599)
!2602 = !DILocation(line: 205, column: 6, scope: !2051, inlinedAt: !2603)
!2603 = distinct !DILocation(line: 150, column: 49, scope: !2043, inlinedAt: !2599)
!2604 = !DILocation(line: 209, column: 33, scope: !2529, inlinedAt: !2537)
!2605 = !DILocation(line: 209, column: 3, scope: !2529, inlinedAt: !2537)
!2606 = !DILocation(line: 212, column: 12, scope: !2529, inlinedAt: !2537)
!2607 = !DILocation(line: 212, column: 7, scope: !2529, inlinedAt: !2537)
!2608 = !DILocation(line: 212, scope: !2529, inlinedAt: !2537)
!2609 = !DILocation(line: 212, column: 27, scope: !2529, inlinedAt: !2537)
!2610 = !DILocation(line: 213, column: 7, scope: !2529, inlinedAt: !2537)
!2611 = !DILocation(line: 213, column: 12, scope: !2529, inlinedAt: !2537)
!2612 = !DILocation(line: 213, column: 9, scope: !2529, inlinedAt: !2537)
!2613 = !DILocation(line: 214, column: 32, scope: !2529, inlinedAt: !2537)
!2614 = !DILocation(line: 214, column: 40, scope: !2529, inlinedAt: !2537)
!2615 = !DILocation(line: 214, column: 31, scope: !2529, inlinedAt: !2537)
!2616 = !DILocation(line: 212, column: 39, scope: !2529, inlinedAt: !2537)
!2617 = !DILocation(line: 212, column: 47, scope: !2529, inlinedAt: !2537)
!2618 = !DILocation(line: 212, column: 35, scope: !2529, inlinedAt: !2537)
!2619 = !DILocation(line: 212, column: 25, scope: !2529, inlinedAt: !2537)
!2620 = !DILocation(line: 169, column: 22, scope: !2579, inlinedAt: !2621)
!2621 = distinct !DILocation(line: 219, column: 21, scope: !2529, inlinedAt: !2537)
!2622 = !DILocation(line: 147, column: 18, scope: !1940, inlinedAt: !2623)
!2623 = distinct !DILocation(line: 171, column: 19, scope: !2579, inlinedAt: !2621)
!2624 = !DILocation(line: 147, column: 53, scope: !1940, inlinedAt: !2623)
!2625 = !DILocation(line: 183, column: 6, scope: !1948, inlinedAt: !2626)
!2626 = distinct !DILocation(line: 147, column: 51, scope: !1940, inlinedAt: !2623)
!2627 = !DILocation(line: 172, column: 10, scope: !2579, inlinedAt: !2621)
!2628 = !DILocation(line: 0, scope: !2579, inlinedAt: !2621)
!2629 = !DILocation(line: 175, column: 3, scope: !2579, inlinedAt: !2621)
!2630 = !DILocation(line: 175, column: 13, scope: !2579, inlinedAt: !2621)
!2631 = !DILocation(line: 26, column: 46, scope: !1833, inlinedAt: !2632)
!2632 = distinct !DILocation(line: 175, column: 12, scope: !2579, inlinedAt: !2621)
!2633 = !DILocation(line: 26, column: 58, scope: !1833, inlinedAt: !2632)
!2634 = !DILocation(line: 26, column: 19, scope: !1833, inlinedAt: !2632)
!2635 = !DILocation(line: 172, column: 6, scope: !2579, inlinedAt: !2621)
!2636 = !DILocation(line: 223, column: 11, scope: !2529, inlinedAt: !2537)
!2637 = !DILocation(line: 223, column: 6, scope: !2529, inlinedAt: !2537)
!2638 = !DILocation(line: 223, scope: !2529, inlinedAt: !2537)
!2639 = !DILocation(line: 223, column: 26, scope: !2529, inlinedAt: !2537)
!2640 = !DILocation(line: 224, column: 6, scope: !2529, inlinedAt: !2537)
!2641 = !DILocation(line: 224, column: 11, scope: !2529, inlinedAt: !2537)
!2642 = !DILocation(line: 224, column: 8, scope: !2529, inlinedAt: !2537)
!2643 = !DILocation(line: 225, column: 14, scope: !2529, inlinedAt: !2537)
!2644 = !DILocation(line: 225, column: 22, scope: !2529, inlinedAt: !2537)
!2645 = !DILocation(line: 225, column: 35, scope: !2529, inlinedAt: !2537)
!2646 = !DILocation(line: 225, column: 43, scope: !2529, inlinedAt: !2537)
!2647 = !DILocalVariable(name: "start", arg: 1, scope: !2648, file: !102, line: 51, type: !21)
!2648 = distinct !DISubprogram(name: "runtime.markRoots", linkageName: "runtime.markRoots", scope: !102, file: !102, line: 51, type: !2649, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2651)
!2649 = !DISubroutineType(types: !2650)
!2650 = !{!21, !21}
!2651 = !{!2647, !2652}
!2652 = !DILocalVariable(name: "end", arg: 2, scope: !2648, file: !102, line: 51, type: !21)
!2653 = !DILocation(line: 51, column: 6, scope: !2648, inlinedAt: !2654)
!2654 = distinct !DILocation(line: 225, column: 13, scope: !2529, inlinedAt: !2537)
!2655 = !DILocation(line: 52, column: 17, scope: !2648, inlinedAt: !2654)
!2656 = !DILocation(line: 52, column: 24, scope: !2648, inlinedAt: !2654)
!2657 = !DILocation(line: 52, column: 16, scope: !2648, inlinedAt: !2654)
!2658 = !DILocation(line: 223, column: 38, scope: !2529, inlinedAt: !2537)
!2659 = !DILocation(line: 223, column: 46, scope: !2529, inlinedAt: !2537)
!2660 = !DILocation(line: 223, column: 34, scope: !2529, inlinedAt: !2537)
!2661 = !DILocation(line: 223, column: 24, scope: !2529, inlinedAt: !2537)
!2662 = !DILocation(line: 230, column: 18, scope: !2529, inlinedAt: !2537)
!2663 = !DILocalVariable(name: "found", arg: 1, scope: !2664, file: !2665, line: 95, type: !349)
!2664 = distinct !DISubprogram(name: "runtime.findGlobals", linkageName: "runtime.findGlobals", scope: !2665, file: !2665, line: 95, type: !2666, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2668)
!2665 = !DIFile(filename: "os_linux.go", directory: "/usr/local/lib/tinygo/src/runtime")
!2666 = !DISubroutineType(types: !2667)
!2667 = !{!349}
!2668 = !{!2663, !2669, !2670, !2671, !2684, !2685, !2686, !2693, !2694}
!2669 = !DILocalVariable(name: "headerPtr", scope: !2664, file: !2665, line: 103, type: !9)
!2670 = !DILocalVariable(name: "i", scope: !2664, file: !2665, line: 104, type: !2130)
!2671 = !DILocalVariable(name: "header", scope: !2664, file: !2665, line: 111, type: !2672)
!2672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2673, size: 64, align: 64, dwarfAddressSpace: 0)
!2673 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.elfProgramHeader64", baseType: !2674)
!2674 = !DICompositeType(tag: DW_TAG_structure_type, size: 448, align: 64, elements: !2675)
!2675 = !{!2676, !2677, !2678, !2679, !2680, !2681, !2682, !2683}
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "_type", baseType: !43, size: 32, align: 32)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "flags", baseType: !43, size: 32, align: 32, offset: 32)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "offset", baseType: !21, size: 64, align: 64, offset: 64)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", baseType: !21, size: 64, align: 64, offset: 128)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "paddr", baseType: !21, size: 64, align: 64, offset: 192)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "filesz", baseType: !21, size: 64, align: 64, offset: 256)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "memsz", baseType: !21, size: 64, align: 64, offset: 320)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "align", baseType: !21, size: 64, align: 64, offset: 384)
!2684 = !DILocalVariable(name: "start", scope: !2664, file: !2665, line: 113, type: !21)
!2685 = !DILocalVariable(name: "end", scope: !2664, file: !2665, line: 114, type: !21)
!2686 = !DILocalVariable(name: "header", scope: !2664, file: !2665, line: 118, type: !2687)
!2687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2688, size: 64, align: 64, dwarfAddressSpace: 0)
!2688 = !DIDerivedType(tag: DW_TAG_typedef, name: "runtime.elfProgramHeader32", baseType: !2689)
!2689 = !DICompositeType(tag: DW_TAG_structure_type, size: 512, align: 64, elements: !2690)
!2690 = !{!2676, !2678, !2679, !2680, !2681, !2682, !2691, !2692}
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "flags", baseType: !43, size: 32, align: 32, offset: 384)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "align", baseType: !21, size: 64, align: 64, offset: 448)
!2693 = !DILocalVariable(name: "start", scope: !2664, file: !2665, line: 120, type: !21)
!2694 = !DILocalVariable(name: "end", scope: !2664, file: !2665, line: 121, type: !21)
!2695 = !DILocation(line: 95, column: 6, scope: !2664, inlinedAt: !2696)
!2696 = distinct !DILocation(line: 16, column: 13, scope: !2697, inlinedAt: !2698)
!2697 = distinct !DISubprogram(name: "runtime.gcScanGlobals", linkageName: "internal/task.gcScanGlobals", scope: !2033, file: !2033, line: 15, type: !1891, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496)
!2698 = distinct !DILocation(line: 233, column: 15, scope: !2529, inlinedAt: !2537)
!2699 = !DILocation(line: 103, column: 2, scope: !2664, inlinedAt: !2696)
!2700 = !DILocation(line: 104, column: 6, scope: !2664, inlinedAt: !2696)
!2701 = !DILocation(line: 104, column: 33, scope: !2664, inlinedAt: !2696)
!2702 = !DILocation(line: 104, column: 16, scope: !2664, inlinedAt: !2696)
!2703 = !DILocation(line: 0, scope: !2664, inlinedAt: !2696)
!2704 = !DILocation(line: 103, column: 80, scope: !2664, inlinedAt: !2696)
!2705 = !DILocation(line: 103, column: 67, scope: !2664, inlinedAt: !2696)
!2706 = !DILocation(line: 103, column: 29, scope: !2664, inlinedAt: !2696)
!2707 = !DILocation(line: 112, column: 14, scope: !2664, inlinedAt: !2696)
!2708 = !DILocation(line: 104, column: 14, scope: !2664, inlinedAt: !2696)
!2709 = !DILocation(line: 111, column: 36, scope: !2664, inlinedAt: !2696)
!2710 = !DILocation(line: 111, column: 4, scope: !2664, inlinedAt: !2696)
!2711 = !DILocation(line: 112, column: 7, scope: !2664, inlinedAt: !2696)
!2712 = !DILocation(line: 112, column: 20, scope: !2664, inlinedAt: !2696)
!2713 = !DILocation(line: 112, column: 34, scope: !2664, inlinedAt: !2696)
!2714 = !DILocation(line: 112, column: 41, scope: !2664, inlinedAt: !2696)
!2715 = !DILocation(line: 112, column: 46, scope: !2664, inlinedAt: !2696)
!2716 = !DILocation(line: 112, column: 52, scope: !2664, inlinedAt: !2696)
!2717 = !DILocation(line: 113, column: 14, scope: !2664, inlinedAt: !2696)
!2718 = !DILocation(line: 113, column: 21, scope: !2664, inlinedAt: !2696)
!2719 = !DILocation(line: 113, column: 5, scope: !2664, inlinedAt: !2696)
!2720 = !DILocation(line: 114, column: 12, scope: !2664, inlinedAt: !2696)
!2721 = !DILocation(line: 114, column: 20, scope: !2664, inlinedAt: !2696)
!2722 = !DILocation(line: 114, column: 5, scope: !2664, inlinedAt: !2696)
!2723 = !DILocation(line: 115, column: 5, scope: !2664, inlinedAt: !2696)
!2724 = !DILocation(line: 115, column: 11, scope: !2664, inlinedAt: !2696)
!2725 = !DILocation(line: 115, column: 18, scope: !2664, inlinedAt: !2696)
!2726 = !DILocation(line: 114, column: 27, scope: !2664, inlinedAt: !2696)
!2727 = !DILocation(line: 114, column: 18, scope: !2664, inlinedAt: !2696)
!2728 = !DILocation(line: 51, column: 6, scope: !2648, inlinedAt: !2729)
!2729 = distinct !DILocation(line: 115, column: 10, scope: !2664, inlinedAt: !2696)
!2730 = !DILocation(line: 52, column: 17, scope: !2648, inlinedAt: !2729)
!2731 = !DILocation(line: 52, column: 24, scope: !2648, inlinedAt: !2729)
!2732 = !DILocation(line: 52, column: 16, scope: !2648, inlinedAt: !2729)
!2733 = !DILocation(line: 125, column: 26, scope: !2664, inlinedAt: !2696)
!2734 = !DILocation(line: 125, column: 48, scope: !2664, inlinedAt: !2696)
!2735 = !DILocation(line: 125, column: 25, scope: !2664, inlinedAt: !2696)
!2736 = !DILocation(line: 125, column: 3, scope: !2664, inlinedAt: !2696)
!2737 = !DILocation(line: 104, column: 41, scope: !2664, inlinedAt: !2696)
!2738 = !DILocation(line: 104, column: 21, scope: !2664, inlinedAt: !2696)
!2739 = !DILocation(line: 49, column: 2, scope: !2526)
!2740 = distinct !DISubprogram(name: "runtime.scanstack", linkageName: "tinygo_scanstack", scope: !2033, file: !2033, line: 23, type: !2741, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2742)
!2741 = !DISubroutineType(types: !2154)
!2742 = !{!2743}
!2743 = !DILocalVariable(name: "sp", arg: 1, scope: !2740, file: !2033, line: 23, type: !21)
!2744 = !DILocation(line: 23, column: 6, scope: !2740)
!2745 = !DILocation(line: 24, column: 12, scope: !2740)
!2746 = !DILocation(line: 62, column: 34, scope: !1890, inlinedAt: !2747)
!2747 = distinct !DILocation(line: 290, column: 16, scope: !2748, inlinedAt: !2749)
!2748 = distinct !DISubprogram(name: "internal/task.StackTop", linkageName: "internal/task.StackTop", scope: !2, file: !2, line: 289, type: !1891, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1462)
!2749 = distinct !DILocation(line: 24, column: 29, scope: !2740)
!2750 = !DILocation(line: 62, column: 2, scope: !1890, inlinedAt: !2747)
!2751 = !DILocation(line: 63, column: 5, scope: !1890, inlinedAt: !2747)
!2752 = !DILocation(line: 63, column: 7, scope: !1890, inlinedAt: !2747)
!2753 = !DILocation(line: 0, scope: !1890, inlinedAt: !2747)
!2754 = !DILocation(line: 64, column: 15, scope: !1890, inlinedAt: !2747)
!2755 = !DILocation(line: 66, column: 9, scope: !1890, inlinedAt: !2747)
!2756 = !DILocation(line: 290, column: 25, scope: !2748, inlinedAt: !2749)
!2757 = !DILocation(line: 51, column: 6, scope: !2648, inlinedAt: !2758)
!2758 = distinct !DILocation(line: 24, column: 11, scope: !2740)
!2759 = !DILocation(line: 52, column: 17, scope: !2648, inlinedAt: !2758)
!2760 = !DILocation(line: 52, column: 24, scope: !2648, inlinedAt: !2758)
!2761 = !DILocation(line: 52, column: 16, scope: !2648, inlinedAt: !2758)
!2762 = !DILocation(line: 25, column: 2, scope: !2740)
!2763 = distinct !DISubprogram(name: "runtime.main", linkageName: "main", scope: !131, file: !131, line: 80, type: !2764, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2766)
!2764 = !DISubroutineType(types: !2765)
!2765 = !{!60, !134}
!2766 = !{!2767, !2768, !2769, !2770, !2771}
!2767 = !DILocalVariable(name: "argc", arg: 1, scope: !2763, file: !131, line: 80, type: !60)
!2768 = !DILocalVariable(name: "argv", arg: 2, scope: !2763, file: !131, line: 80, type: !134)
!2769 = !DILocalVariable(name: "main_argc", scope: !2763, file: !131, line: 105, type: !60)
!2770 = !DILocalVariable(name: "main_argv", scope: !2763, file: !131, line: 106, type: !134)
!2771 = !DILocalVariable(name: "stackTop", scope: !2763, file: !131, line: 75, type: !21)
!2772 = !DILocation(line: 80, column: 6, scope: !2763)
!2773 = !DILocation(line: 87, column: 14, scope: !2763)
!2774 = !DILocation(line: 87, column: 2, scope: !2763)
!2775 = !DILocation(line: 88, column: 14, scope: !2763)
!2776 = !DILocation(line: 88, column: 2, scope: !2763)
!2777 = !DILocation(line: 92, column: 31, scope: !2763)
!2778 = !DILocation(line: 58, column: 6, scope: !1902, inlinedAt: !2779)
!2779 = distinct !DILocation(line: 27, column: 26, scope: !2780, inlinedAt: !2782)
!2780 = distinct !DISubprogram(name: "runtime.getCurrentStackPointer", linkageName: "runtime.getCurrentStackPointer", scope: !2781, file: !2781, line: 26, type: !1891, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496)
!2781 = !DIFile(filename: "arch_amd64.go", directory: "/usr/local/lib/tinygo/src/runtime")
!2782 = distinct !DILocation(line: 97, column: 35, scope: !2763)
!2783 = !DILocation(line: 27, column: 16, scope: !2780, inlinedAt: !2782)
!2784 = !DILocation(line: 97, column: 2, scope: !2763)
!2785 = !DILocation(line: 98, column: 9, scope: !2763)
!2786 = !DILocation(line: 101, column: 2, scope: !2763)
!2787 = distinct !DISubprogram(name: "runtime.runMain", linkageName: "runtime.runMain", scope: !131, file: !131, line: 135, type: !2212, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496)
!2788 = !DILocation(line: 137, column: 22, scope: !2789, inlinedAt: !2793)
!2789 = distinct !DISubprogram(name: "runtime.hardwareRand", linkageName: "runtime.hardwareRand", scope: !2665, file: !2665, line: 137, type: !1891, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2790)
!2790 = !{!2791, !2792}
!2791 = !DILocalVariable(name: "read", scope: !2789, file: !2665, line: 138, type: !43)
!2792 = !DILocalVariable(name: "n", scope: !2789, file: !2665, line: 137, type: !11)
!2793 = distinct !DILocation(line: 27, column: 22, scope: !2794, inlinedAt: !2799)
!2794 = distinct !DISubprogram(name: "runtime.initRand", linkageName: "runtime.initRand", scope: !1500, file: !1500, line: 26, type: !1891, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2795)
!2795 = !{!2796, !2797, !2798}
!2796 = !DILocalVariable(name: "r", scope: !2794, file: !1500, line: 27, type: !11)
!2797 = !DILocalVariable(name: "xorshift64State", scope: !2794, file: !1500, line: 52, type: !11)
!2798 = !DILocalVariable(name: "xorshift32State", scope: !2794, file: !1500, line: 32, type: !43)
!2799 = distinct !DILocation(line: 24, column: 10, scope: !2800, inlinedAt: !2803)
!2800 = distinct !DISubprogram(name: "runtime.run", linkageName: "runtime.run", scope: !145, file: !145, line: 23, type: !1891, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2801)
!2801 = !{!2802}
!2802 = !DILocalVariable(name: "stackTop", scope: !2800, file: !131, line: 75, type: !21)
!2803 = distinct !DILocation(line: 136, column: 5, scope: !2787)
!2804 = !DILocation(line: 138, column: 24, scope: !2789, inlinedAt: !2793)
!2805 = !DILocation(line: 138, column: 2, scope: !2789, inlinedAt: !2793)
!2806 = !DILocation(line: 139, column: 5, scope: !2789, inlinedAt: !2793)
!2807 = !DILocation(line: 139, column: 10, scope: !2789, inlinedAt: !2793)
!2808 = !DILocation(line: 0, scope: !2789, inlinedAt: !2793)
!2809 = !DILocation(line: 140, column: 3, scope: !2789, inlinedAt: !2793)
!2810 = !DILocation(line: 27, column: 2, scope: !2794, inlinedAt: !2799)
!2811 = !DILocation(line: 28, column: 27, scope: !2794, inlinedAt: !2799)
!2812 = !DILocation(line: 28, column: 2, scope: !2794, inlinedAt: !2799)
!2813 = !DILocation(line: 29, column: 27, scope: !2794, inlinedAt: !2799)
!2814 = !DILocation(line: 29, column: 2, scope: !2794, inlinedAt: !2799)
!2815 = !DILocation(line: 35, column: 12, scope: !2816, inlinedAt: !2817)
!2816 = distinct !DISubprogram(name: "runtime.initHeap", linkageName: "runtime.initHeap", scope: !102, file: !102, line: 34, type: !1891, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496)
!2817 = distinct !DILocation(line: 25, column: 10, scope: !2800, inlinedAt: !2803)
!2818 = !DILocation(line: 39, column: 8, scope: !2816, inlinedAt: !2817)
!2819 = !DILocation(line: 26, column: 12, scope: !2800, inlinedAt: !2803)
!2820 = !DILocalVariable(name: "sp", arg: 1, scope: !2821, file: !2, line: 55, type: !21)
!2821 = distinct !DISubprogram(name: "internal/task.Init", linkageName: "internal/task.Init", scope: !2, file: !2, line: 55, type: !2741, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1462, retainedNodes: !2822)
!2822 = !{!2820, !2823}
!2823 = !DILocalVariable(name: "stackTop", scope: !2821, file: !2, line: 24, type: !21)
!2824 = !DILocation(line: 55, column: 6, scope: !2821, inlinedAt: !2825)
!2825 = distinct !DILocation(line: 26, column: 11, scope: !2800, inlinedAt: !2803)
!2826 = !DILocation(line: 56, column: 28, scope: !2821, inlinedAt: !2825)
!2827 = !DILocation(line: 56, column: 17, scope: !2821, inlinedAt: !2825)
!2828 = !DILocation(line: 57, column: 18, scope: !2821, inlinedAt: !2825)
!2829 = !DILocation(line: 28, column: 10, scope: !2800, inlinedAt: !2803)
!2830 = !DILocation(line: 137, column: 2, scope: !2787)
!2831 = distinct !DISubprogram(name: "runtime.tinygo_handle_fatal_signal", linkageName: "tinygo_handle_fatal_signal", scope: !131, file: !131, line: 148, type: !2832, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2834)
!2832 = !DISubroutineType(types: !2833)
!2833 = !{!60, !21}
!2834 = !{!2835, !2836}
!2835 = !DILocalVariable(name: "sig", arg: 1, scope: !2831, file: !131, line: 148, type: !60)
!2836 = !DILocalVariable(name: "addr", arg: 2, scope: !2831, file: !131, line: 148, type: !21)
!2837 = !DILocation(line: 215, column: 2, scope: !2132, inlinedAt: !2838)
!2838 = distinct !DILocation(line: 14, column: 10, scope: !2126, inlinedAt: !2839)
!2839 = distinct !DILocation(line: 158, column: 14, scope: !2831)
!2840 = !DILocation(line: 215, column: 2, scope: !2132, inlinedAt: !2841)
!2841 = distinct !DILocation(line: 290, column: 9, scope: !2211, inlinedAt: !2842)
!2842 = distinct !DILocation(line: 169, column: 10, scope: !2831)
!2843 = !DILocation(line: 215, column: 2, scope: !2132, inlinedAt: !2844)
!2844 = distinct !DILocation(line: 90, column: 10, scope: !2845, inlinedAt: !2854)
!2845 = distinct !DISubprogram(name: "runtime.printuint64", linkageName: "runtime.printuint64", scope: !1602, file: !1602, line: 76, type: !2846, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2848)
!2846 = !DISubroutineType(types: !2847)
!2847 = !{!11}
!2848 = !{!2849, !2850, !2851, !2852, !2853}
!2849 = !DILocalVariable(name: "n", arg: 1, scope: !2845, file: !1602, line: 76, type: !11)
!2850 = !DILocalVariable(name: "firstdigit", scope: !2845, file: !1602, line: 79, type: !2130)
!2851 = !DILocalVariable(name: "i", scope: !2845, file: !1602, line: 80, type: !2130)
!2852 = !DILocalVariable(name: "digit", scope: !2845, file: !1602, line: 81, type: !163)
!2853 = !DILocalVariable(name: "i", scope: !2845, file: !1602, line: 89, type: !2130)
!2854 = distinct !DILocation(line: 62, column: 13, scope: !2855, inlinedAt: !2860)
!2855 = distinct !DISubprogram(name: "runtime.printuint32", linkageName: "runtime.printuint32", scope: !1602, file: !1602, line: 61, type: !2856, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2858)
!2856 = !DISubroutineType(types: !2857)
!2857 = !{!43}
!2858 = !{!2859}
!2859 = !DILocalVariable(name: "n", arg: 1, scope: !2855, file: !1602, line: 61, type: !43)
!2860 = distinct !DILocation(line: 72, column: 13, scope: !2861, inlinedAt: !2864)
!2861 = distinct !DISubprogram(name: "runtime.printint32", linkageName: "runtime.printint32", scope: !1602, file: !1602, line: 65, type: !1883, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !2862)
!2862 = !{!2863}
!2863 = !DILocalVariable(name: "n", arg: 1, scope: !2861, file: !1602, line: 65, type: !60)
!2864 = distinct !DILocation(line: 169, column: 10, scope: !2831)
!2865 = !DILocation(line: 76, column: 6, scope: !2845, inlinedAt: !2854)
!2866 = !DILocation(line: 77, column: 2, scope: !2845, inlinedAt: !2854)
!2867 = !DILocation(line: 215, column: 2, scope: !2132, inlinedAt: !2868)
!2868 = distinct !DILocation(line: 69, column: 10, scope: !2861, inlinedAt: !2864)
!2869 = !DILocation(line: 215, column: 2, scope: !2132, inlinedAt: !2870)
!2870 = distinct !DILocation(line: 290, column: 9, scope: !2211, inlinedAt: !2871)
!2871 = distinct !DILocation(line: 167, column: 10, scope: !2831)
!2872 = !DILocation(line: 215, column: 2, scope: !2132, inlinedAt: !2873)
!2873 = distinct !DILocation(line: 14, column: 10, scope: !2126, inlinedAt: !2874)
!2874 = distinct !DILocation(line: 167, column: 10, scope: !2831)
!2875 = !DILocation(line: 215, column: 2, scope: !2132, inlinedAt: !2876)
!2876 = distinct !DILocation(line: 290, column: 9, scope: !2211, inlinedAt: !2877)
!2877 = distinct !DILocation(line: 165, column: 10, scope: !2831)
!2878 = !DILocation(line: 215, column: 2, scope: !2132, inlinedAt: !2879)
!2879 = distinct !DILocation(line: 14, column: 10, scope: !2126, inlinedAt: !2880)
!2880 = distinct !DILocation(line: 165, column: 10, scope: !2831)
!2881 = !DILocation(line: 215, column: 2, scope: !2132, inlinedAt: !2882)
!2882 = distinct !DILocation(line: 290, column: 9, scope: !2211, inlinedAt: !2883)
!2883 = distinct !DILocation(line: 163, column: 10, scope: !2831)
!2884 = !DILocation(line: 215, column: 2, scope: !2132, inlinedAt: !2885)
!2885 = distinct !DILocation(line: 14, column: 10, scope: !2126, inlinedAt: !2886)
!2886 = distinct !DILocation(line: 163, column: 10, scope: !2831)
!2887 = !DILocation(line: 215, column: 2, scope: !2132, inlinedAt: !2888)
!2888 = distinct !DILocation(line: 14, column: 10, scope: !2126, inlinedAt: !2889)
!2889 = distinct !DILocation(line: 160, column: 13, scope: !2831)
!2890 = !DILocation(line: 215, column: 2, scope: !2132, inlinedAt: !2891)
!2891 = distinct !DILocation(line: 14, column: 10, scope: !2126, inlinedAt: !2892)
!2892 = distinct !DILocation(line: 155, column: 14, scope: !2831)
!2893 = !DILocation(line: 148, column: 6, scope: !2831)
!2894 = !DILocation(line: 154, column: 5, scope: !2831)
!2895 = !DILocation(line: 154, column: 10, scope: !2831)
!2896 = !DILocation(line: 0, scope: !2831)
!2897 = !DILocation(line: 14, column: 13, scope: !2126, inlinedAt: !2892)
!2898 = !DILocation(line: 14, column: 11, scope: !2126, inlinedAt: !2892)
!2899 = !DILocation(line: 14, column: 12, scope: !2126, inlinedAt: !2892)
!2900 = !DILocation(line: 215, column: 17, scope: !2132, inlinedAt: !2891)
!2901 = !DILocation(line: 216, column: 12, scope: !2132, inlinedAt: !2891)
!2902 = !DILocation(line: 217, column: 2, scope: !2132, inlinedAt: !2891)
!2903 = !DILocation(line: 13, column: 26, scope: !2126, inlinedAt: !2892)
!2904 = !DILocation(line: 13, column: 14, scope: !2126, inlinedAt: !2892)
!2905 = !DILocation(line: 13, column: 16, scope: !2126, inlinedAt: !2892)
!2906 = !DILocation(line: 0, scope: !2126, inlinedAt: !2892)
!2907 = !DILocation(line: 156, column: 12, scope: !2831)
!2908 = !DILocation(line: 156, column: 11, scope: !2831)
!2909 = !DILocation(line: 12, column: 6, scope: !2126, inlinedAt: !2889)
!2910 = !DILocation(line: 13, column: 6, scope: !2126, inlinedAt: !2889)
!2911 = !DILocation(line: 13, column: 22, scope: !2126, inlinedAt: !2889)
!2912 = !DILocation(line: 14, column: 13, scope: !2126, inlinedAt: !2889)
!2913 = !DILocation(line: 14, column: 11, scope: !2126, inlinedAt: !2889)
!2914 = !DILocation(line: 215, column: 17, scope: !2132, inlinedAt: !2888)
!2915 = !DILocation(line: 216, column: 12, scope: !2132, inlinedAt: !2888)
!2916 = !DILocation(line: 217, column: 2, scope: !2132, inlinedAt: !2888)
!2917 = !DILocation(line: 13, column: 14, scope: !2126, inlinedAt: !2889)
!2918 = !DILocation(line: 161, column: 9, scope: !2831)
!2919 = !DILocation(line: 31, column: 17, scope: !1795, inlinedAt: !2920)
!2920 = distinct !DILocation(line: 139, column: 16, scope: !2921, inlinedAt: !2922)
!2921 = distinct !DISubprogram(name: "runtime.printlock", linkageName: "runtime.printlock", scope: !145, file: !145, line: 138, type: !1891, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496)
!2922 = distinct !DILocation(line: 163, column: 10, scope: !2831)
!2923 = !DILocation(line: 33, column: 5, scope: !1795, inlinedAt: !2920)
!2924 = !DILocation(line: 156, column: 18, scope: !1802, inlinedAt: !2925)
!2925 = distinct !DILocation(line: 33, column: 27, scope: !1795, inlinedAt: !2920)
!2926 = !DILocation(line: 157, column: 31, scope: !1802, inlinedAt: !2925)
!2927 = !DILocation(line: 157, column: 36, scope: !1802, inlinedAt: !2925)
!2928 = !DILocation(line: 157, column: 41, scope: !1802, inlinedAt: !2925)
!2929 = !DILocation(line: 99, column: 6, scope: !1814, inlinedAt: !2930)
!2930 = distinct !DILocation(line: 157, column: 29, scope: !1802, inlinedAt: !2925)
!2931 = !DILocation(line: 0, scope: !1795, inlinedAt: !2920)
!2932 = !DILocation(line: 43, column: 6, scope: !1795, inlinedAt: !2920)
!2933 = !DILocation(line: 153, column: 18, scope: !1746, inlinedAt: !2934)
!2934 = distinct !DILocation(line: 43, column: 18, scope: !1795, inlinedAt: !2920)
!2935 = !DILocation(line: 153, column: 69, scope: !1746, inlinedAt: !2934)
!2936 = !DILocation(line: 153, column: 74, scope: !1746, inlinedAt: !2934)
!2937 = !DILocation(line: 77, column: 6, scope: !1758, inlinedAt: !2938)
!2938 = distinct !DILocation(line: 153, column: 67, scope: !1746, inlinedAt: !2934)
!2939 = !DILocation(line: 43, column: 22, scope: !1795, inlinedAt: !2920)
!2940 = !DILocation(line: 45, column: 3, scope: !1795, inlinedAt: !2920)
!2941 = !DILocation(line: 26, column: 46, scope: !1833, inlinedAt: !2942)
!2942 = distinct !DILocation(line: 45, column: 15, scope: !1795, inlinedAt: !2920)
!2943 = !DILocation(line: 26, column: 58, scope: !1833, inlinedAt: !2942)
!2944 = !DILocation(line: 26, column: 19, scope: !1833, inlinedAt: !2942)
!2945 = !DILocation(line: 12, column: 6, scope: !2126, inlinedAt: !2886)
!2946 = !DILocation(line: 13, column: 6, scope: !2126, inlinedAt: !2886)
!2947 = !DILocation(line: 13, column: 22, scope: !2126, inlinedAt: !2886)
!2948 = !DILocation(line: 14, column: 13, scope: !2126, inlinedAt: !2886)
!2949 = !DILocation(line: 14, column: 11, scope: !2126, inlinedAt: !2886)
!2950 = !DILocation(line: 215, column: 17, scope: !2132, inlinedAt: !2885)
!2951 = !DILocation(line: 216, column: 12, scope: !2132, inlinedAt: !2885)
!2952 = !DILocation(line: 217, column: 2, scope: !2132, inlinedAt: !2885)
!2953 = !DILocation(line: 13, column: 14, scope: !2126, inlinedAt: !2886)
!2954 = !DILocation(line: 215, column: 17, scope: !2132, inlinedAt: !2882)
!2955 = !DILocation(line: 216, column: 12, scope: !2132, inlinedAt: !2882)
!2956 = !DILocation(line: 217, column: 2, scope: !2132, inlinedAt: !2882)
!2957 = !DILocation(line: 50, column: 12, scope: !1735, inlinedAt: !2958)
!2958 = distinct !DILocation(line: 143, column: 18, scope: !2959, inlinedAt: !2960)
!2959 = distinct !DISubprogram(name: "runtime.printunlock", linkageName: "runtime.printunlock", scope: !145, file: !145, line: 142, type: !1891, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496)
!2960 = distinct !DILocation(line: 163, column: 10, scope: !2831)
!2961 = !DILocation(line: 153, column: 69, scope: !1746, inlinedAt: !2962)
!2962 = distinct !DILocation(line: 50, column: 24, scope: !1735, inlinedAt: !2958)
!2963 = !DILocation(line: 153, column: 74, scope: !1746, inlinedAt: !2962)
!2964 = !DILocation(line: 77, column: 6, scope: !1758, inlinedAt: !2965)
!2965 = distinct !DILocation(line: 153, column: 67, scope: !1746, inlinedAt: !2962)
!2966 = !DILocation(line: 50, column: 29, scope: !1735, inlinedAt: !2958)
!2967 = !DILocation(line: 0, scope: !1735, inlinedAt: !2958)
!2968 = !DILocation(line: 52, column: 8, scope: !1735, inlinedAt: !2958)
!2969 = !DILocation(line: 55, column: 3, scope: !1735, inlinedAt: !2958)
!2970 = !DILocation(line: 53, column: 17, scope: !1773, inlinedAt: !2971)
!2971 = distinct !DILocation(line: 55, column: 15, scope: !1735, inlinedAt: !2958)
!2972 = !DILocation(line: 54, column: 46, scope: !1773, inlinedAt: !2971)
!2973 = !DILocation(line: 54, column: 19, scope: !1773, inlinedAt: !2971)
!2974 = !DILocation(line: 180, column: 8, scope: !2831)
!2975 = !DILocation(line: 180, column: 7, scope: !2831)
!2976 = !DILocation(line: 181, column: 2, scope: !2831)
!2977 = !DILocation(line: 31, column: 17, scope: !1795, inlinedAt: !2978)
!2978 = distinct !DILocation(line: 139, column: 16, scope: !2921, inlinedAt: !2979)
!2979 = distinct !DILocation(line: 165, column: 10, scope: !2831)
!2980 = !DILocation(line: 33, column: 5, scope: !1795, inlinedAt: !2978)
!2981 = !DILocation(line: 156, column: 18, scope: !1802, inlinedAt: !2982)
!2982 = distinct !DILocation(line: 33, column: 27, scope: !1795, inlinedAt: !2978)
!2983 = !DILocation(line: 157, column: 31, scope: !1802, inlinedAt: !2982)
!2984 = !DILocation(line: 157, column: 36, scope: !1802, inlinedAt: !2982)
!2985 = !DILocation(line: 157, column: 41, scope: !1802, inlinedAt: !2982)
!2986 = !DILocation(line: 99, column: 6, scope: !1814, inlinedAt: !2987)
!2987 = distinct !DILocation(line: 157, column: 29, scope: !1802, inlinedAt: !2982)
!2988 = !DILocation(line: 0, scope: !1795, inlinedAt: !2978)
!2989 = !DILocation(line: 43, column: 6, scope: !1795, inlinedAt: !2978)
!2990 = !DILocation(line: 153, column: 18, scope: !1746, inlinedAt: !2991)
!2991 = distinct !DILocation(line: 43, column: 18, scope: !1795, inlinedAt: !2978)
!2992 = !DILocation(line: 153, column: 69, scope: !1746, inlinedAt: !2991)
!2993 = !DILocation(line: 153, column: 74, scope: !1746, inlinedAt: !2991)
!2994 = !DILocation(line: 77, column: 6, scope: !1758, inlinedAt: !2995)
!2995 = distinct !DILocation(line: 153, column: 67, scope: !1746, inlinedAt: !2991)
!2996 = !DILocation(line: 43, column: 22, scope: !1795, inlinedAt: !2978)
!2997 = !DILocation(line: 45, column: 3, scope: !1795, inlinedAt: !2978)
!2998 = !DILocation(line: 26, column: 46, scope: !1833, inlinedAt: !2999)
!2999 = distinct !DILocation(line: 45, column: 15, scope: !1795, inlinedAt: !2978)
!3000 = !DILocation(line: 26, column: 58, scope: !1833, inlinedAt: !2999)
!3001 = !DILocation(line: 26, column: 19, scope: !1833, inlinedAt: !2999)
!3002 = !DILocation(line: 12, column: 6, scope: !2126, inlinedAt: !2880)
!3003 = !DILocation(line: 13, column: 6, scope: !2126, inlinedAt: !2880)
!3004 = !DILocation(line: 13, column: 22, scope: !2126, inlinedAt: !2880)
!3005 = !DILocation(line: 14, column: 13, scope: !2126, inlinedAt: !2880)
!3006 = !DILocation(line: 14, column: 11, scope: !2126, inlinedAt: !2880)
!3007 = !DILocation(line: 215, column: 17, scope: !2132, inlinedAt: !2879)
!3008 = !DILocation(line: 216, column: 12, scope: !2132, inlinedAt: !2879)
!3009 = !DILocation(line: 217, column: 2, scope: !2132, inlinedAt: !2879)
!3010 = !DILocation(line: 13, column: 14, scope: !2126, inlinedAt: !2880)
!3011 = !DILocation(line: 215, column: 17, scope: !2132, inlinedAt: !2876)
!3012 = !DILocation(line: 216, column: 12, scope: !2132, inlinedAt: !2876)
!3013 = !DILocation(line: 217, column: 2, scope: !2132, inlinedAt: !2876)
!3014 = !DILocation(line: 50, column: 12, scope: !1735, inlinedAt: !3015)
!3015 = distinct !DILocation(line: 143, column: 18, scope: !2959, inlinedAt: !3016)
!3016 = distinct !DILocation(line: 165, column: 10, scope: !2831)
!3017 = !DILocation(line: 153, column: 69, scope: !1746, inlinedAt: !3018)
!3018 = distinct !DILocation(line: 50, column: 24, scope: !1735, inlinedAt: !3015)
!3019 = !DILocation(line: 153, column: 74, scope: !1746, inlinedAt: !3018)
!3020 = !DILocation(line: 77, column: 6, scope: !1758, inlinedAt: !3021)
!3021 = distinct !DILocation(line: 153, column: 67, scope: !1746, inlinedAt: !3018)
!3022 = !DILocation(line: 50, column: 29, scope: !1735, inlinedAt: !3015)
!3023 = !DILocation(line: 0, scope: !1735, inlinedAt: !3015)
!3024 = !DILocation(line: 52, column: 8, scope: !1735, inlinedAt: !3015)
!3025 = !DILocation(line: 55, column: 3, scope: !1735, inlinedAt: !3015)
!3026 = !DILocation(line: 53, column: 17, scope: !1773, inlinedAt: !3027)
!3027 = distinct !DILocation(line: 55, column: 15, scope: !1735, inlinedAt: !3015)
!3028 = !DILocation(line: 54, column: 46, scope: !1773, inlinedAt: !3027)
!3029 = !DILocation(line: 54, column: 19, scope: !1773, inlinedAt: !3027)
!3030 = !DILocation(line: 31, column: 17, scope: !1795, inlinedAt: !3031)
!3031 = distinct !DILocation(line: 139, column: 16, scope: !2921, inlinedAt: !3032)
!3032 = distinct !DILocation(line: 167, column: 10, scope: !2831)
!3033 = !DILocation(line: 33, column: 5, scope: !1795, inlinedAt: !3031)
!3034 = !DILocation(line: 156, column: 18, scope: !1802, inlinedAt: !3035)
!3035 = distinct !DILocation(line: 33, column: 27, scope: !1795, inlinedAt: !3031)
!3036 = !DILocation(line: 157, column: 31, scope: !1802, inlinedAt: !3035)
!3037 = !DILocation(line: 157, column: 36, scope: !1802, inlinedAt: !3035)
!3038 = !DILocation(line: 157, column: 41, scope: !1802, inlinedAt: !3035)
!3039 = !DILocation(line: 99, column: 6, scope: !1814, inlinedAt: !3040)
!3040 = distinct !DILocation(line: 157, column: 29, scope: !1802, inlinedAt: !3035)
!3041 = !DILocation(line: 0, scope: !1795, inlinedAt: !3031)
!3042 = !DILocation(line: 43, column: 6, scope: !1795, inlinedAt: !3031)
!3043 = !DILocation(line: 153, column: 18, scope: !1746, inlinedAt: !3044)
!3044 = distinct !DILocation(line: 43, column: 18, scope: !1795, inlinedAt: !3031)
!3045 = !DILocation(line: 153, column: 69, scope: !1746, inlinedAt: !3044)
!3046 = !DILocation(line: 153, column: 74, scope: !1746, inlinedAt: !3044)
!3047 = !DILocation(line: 77, column: 6, scope: !1758, inlinedAt: !3048)
!3048 = distinct !DILocation(line: 153, column: 67, scope: !1746, inlinedAt: !3044)
!3049 = !DILocation(line: 43, column: 22, scope: !1795, inlinedAt: !3031)
!3050 = !DILocation(line: 45, column: 3, scope: !1795, inlinedAt: !3031)
!3051 = !DILocation(line: 26, column: 46, scope: !1833, inlinedAt: !3052)
!3052 = distinct !DILocation(line: 45, column: 15, scope: !1795, inlinedAt: !3031)
!3053 = !DILocation(line: 26, column: 58, scope: !1833, inlinedAt: !3052)
!3054 = !DILocation(line: 26, column: 19, scope: !1833, inlinedAt: !3052)
!3055 = !DILocation(line: 12, column: 6, scope: !2126, inlinedAt: !2874)
!3056 = !DILocation(line: 13, column: 6, scope: !2126, inlinedAt: !2874)
!3057 = !DILocation(line: 13, column: 22, scope: !2126, inlinedAt: !2874)
!3058 = !DILocation(line: 14, column: 13, scope: !2126, inlinedAt: !2874)
!3059 = !DILocation(line: 14, column: 11, scope: !2126, inlinedAt: !2874)
!3060 = !DILocation(line: 215, column: 17, scope: !2132, inlinedAt: !2873)
!3061 = !DILocation(line: 216, column: 12, scope: !2132, inlinedAt: !2873)
!3062 = !DILocation(line: 217, column: 2, scope: !2132, inlinedAt: !2873)
!3063 = !DILocation(line: 13, column: 14, scope: !2126, inlinedAt: !2874)
!3064 = !DILocation(line: 215, column: 17, scope: !2132, inlinedAt: !2870)
!3065 = !DILocation(line: 216, column: 12, scope: !2132, inlinedAt: !2870)
!3066 = !DILocation(line: 217, column: 2, scope: !2132, inlinedAt: !2870)
!3067 = !DILocation(line: 50, column: 12, scope: !1735, inlinedAt: !3068)
!3068 = distinct !DILocation(line: 143, column: 18, scope: !2959, inlinedAt: !3069)
!3069 = distinct !DILocation(line: 167, column: 10, scope: !2831)
!3070 = !DILocation(line: 153, column: 69, scope: !1746, inlinedAt: !3071)
!3071 = distinct !DILocation(line: 50, column: 24, scope: !1735, inlinedAt: !3068)
!3072 = !DILocation(line: 153, column: 74, scope: !1746, inlinedAt: !3071)
!3073 = !DILocation(line: 77, column: 6, scope: !1758, inlinedAt: !3074)
!3074 = distinct !DILocation(line: 153, column: 67, scope: !1746, inlinedAt: !3071)
!3075 = !DILocation(line: 50, column: 29, scope: !1735, inlinedAt: !3068)
!3076 = !DILocation(line: 0, scope: !1735, inlinedAt: !3068)
!3077 = !DILocation(line: 52, column: 8, scope: !1735, inlinedAt: !3068)
!3078 = !DILocation(line: 55, column: 3, scope: !1735, inlinedAt: !3068)
!3079 = !DILocation(line: 53, column: 17, scope: !1773, inlinedAt: !3080)
!3080 = distinct !DILocation(line: 55, column: 15, scope: !1735, inlinedAt: !3068)
!3081 = !DILocation(line: 54, column: 46, scope: !1773, inlinedAt: !3080)
!3082 = !DILocation(line: 54, column: 19, scope: !1773, inlinedAt: !3080)
!3083 = !DILocation(line: 169, column: 11, scope: !2831)
!3084 = !DILocation(line: 31, column: 17, scope: !1795, inlinedAt: !3085)
!3085 = distinct !DILocation(line: 139, column: 16, scope: !2921, inlinedAt: !3086)
!3086 = distinct !DILocation(line: 169, column: 10, scope: !2831)
!3087 = !DILocation(line: 33, column: 5, scope: !1795, inlinedAt: !3085)
!3088 = !DILocation(line: 156, column: 18, scope: !1802, inlinedAt: !3089)
!3089 = distinct !DILocation(line: 33, column: 27, scope: !1795, inlinedAt: !3085)
!3090 = !DILocation(line: 157, column: 31, scope: !1802, inlinedAt: !3089)
!3091 = !DILocation(line: 157, column: 36, scope: !1802, inlinedAt: !3089)
!3092 = !DILocation(line: 157, column: 41, scope: !1802, inlinedAt: !3089)
!3093 = !DILocation(line: 99, column: 6, scope: !1814, inlinedAt: !3094)
!3094 = distinct !DILocation(line: 157, column: 29, scope: !1802, inlinedAt: !3089)
!3095 = !DILocation(line: 0, scope: !1795, inlinedAt: !3085)
!3096 = !DILocation(line: 43, column: 6, scope: !1795, inlinedAt: !3085)
!3097 = !DILocation(line: 153, column: 18, scope: !1746, inlinedAt: !3098)
!3098 = distinct !DILocation(line: 43, column: 18, scope: !1795, inlinedAt: !3085)
!3099 = !DILocation(line: 153, column: 69, scope: !1746, inlinedAt: !3098)
!3100 = !DILocation(line: 153, column: 74, scope: !1746, inlinedAt: !3098)
!3101 = !DILocation(line: 77, column: 6, scope: !1758, inlinedAt: !3102)
!3102 = distinct !DILocation(line: 153, column: 67, scope: !1746, inlinedAt: !3098)
!3103 = !DILocation(line: 43, column: 22, scope: !1795, inlinedAt: !3085)
!3104 = !DILocation(line: 45, column: 3, scope: !1795, inlinedAt: !3085)
!3105 = !DILocation(line: 26, column: 46, scope: !1833, inlinedAt: !3106)
!3106 = distinct !DILocation(line: 45, column: 15, scope: !1795, inlinedAt: !3085)
!3107 = !DILocation(line: 26, column: 58, scope: !1833, inlinedAt: !3106)
!3108 = !DILocation(line: 26, column: 19, scope: !1833, inlinedAt: !3106)
!3109 = !DILocation(line: 65, column: 6, scope: !2861, inlinedAt: !2864)
!3110 = !DILocation(line: 68, column: 5, scope: !2861, inlinedAt: !2864)
!3111 = !DILocation(line: 68, column: 7, scope: !2861, inlinedAt: !2864)
!3112 = !DILocation(line: 0, scope: !2861, inlinedAt: !2864)
!3113 = !DILocation(line: 215, column: 17, scope: !2132, inlinedAt: !2868)
!3114 = !DILocation(line: 214, column: 6, scope: !2132, inlinedAt: !2868)
!3115 = !DILocation(line: 216, column: 12, scope: !2132, inlinedAt: !2868)
!3116 = !DILocation(line: 217, column: 2, scope: !2132, inlinedAt: !2868)
!3117 = !DILocation(line: 70, column: 8, scope: !2861, inlinedAt: !2864)
!3118 = !DILocation(line: 70, column: 7, scope: !2861, inlinedAt: !2864)
!3119 = !DILocation(line: 70, column: 3, scope: !2861, inlinedAt: !2864)
!3120 = !DILocation(line: 65, column: 17, scope: !2861, inlinedAt: !2864)
!3121 = !DILocation(line: 72, column: 21, scope: !2861, inlinedAt: !2864)
!3122 = !DILocation(line: 61, column: 6, scope: !2855, inlinedAt: !2860)
!3123 = !DILocation(line: 62, column: 21, scope: !2855, inlinedAt: !2860)
!3124 = !DILocation(line: 62, column: 20, scope: !2855, inlinedAt: !2860)
!3125 = !DILocation(line: 79, column: 2, scope: !2845, inlinedAt: !2854)
!3126 = !DILocation(line: 80, column: 6, scope: !2845, inlinedAt: !2854)
!3127 = !DILocation(line: 0, scope: !2845, inlinedAt: !2854)
!3128 = !DILocation(line: 89, column: 23, scope: !2845, inlinedAt: !2854)
!3129 = !DILocation(line: 89, column: 25, scope: !2845, inlinedAt: !2854)
!3130 = !DILocation(line: 80, column: 15, scope: !2845, inlinedAt: !2854)
!3131 = !DILocation(line: 81, column: 17, scope: !2845, inlinedAt: !2854)
!3132 = !DILocation(line: 81, column: 18, scope: !2845, inlinedAt: !2854)
!3133 = !DILocation(line: 81, column: 16, scope: !2845, inlinedAt: !2854)
!3134 = !DILocation(line: 82, column: 15, scope: !2845, inlinedAt: !2854)
!3135 = !DILocation(line: 82, column: 9, scope: !2845, inlinedAt: !2854)
!3136 = !DILocation(line: 83, column: 12, scope: !2845, inlinedAt: !2854)
!3137 = !DILocation(line: 86, column: 3, scope: !2845, inlinedAt: !2854)
!3138 = !DILocation(line: 80, column: 23, scope: !2845, inlinedAt: !2854)
!3139 = !DILocation(line: 80, column: 17, scope: !2845, inlinedAt: !2854)
!3140 = !DILocation(line: 90, column: 18, scope: !2845, inlinedAt: !2854)
!3141 = !DILocation(line: 90, column: 17, scope: !2845, inlinedAt: !2854)
!3142 = !DILocation(line: 215, column: 17, scope: !2132, inlinedAt: !2844)
!3143 = !DILocation(line: 216, column: 12, scope: !2132, inlinedAt: !2844)
!3144 = !DILocation(line: 217, column: 2, scope: !2132, inlinedAt: !2844)
!3145 = !DILocation(line: 89, column: 31, scope: !2845, inlinedAt: !2854)
!3146 = !DILocation(line: 92, column: 2, scope: !2845, inlinedAt: !2854)
!3147 = !DILocation(line: 215, column: 17, scope: !2132, inlinedAt: !2841)
!3148 = !DILocation(line: 214, column: 6, scope: !2132, inlinedAt: !2841)
!3149 = !DILocation(line: 216, column: 12, scope: !2132, inlinedAt: !2841)
!3150 = !DILocation(line: 217, column: 2, scope: !2132, inlinedAt: !2841)
!3151 = !DILocation(line: 49, column: 17, scope: !1735, inlinedAt: !3152)
!3152 = distinct !DILocation(line: 143, column: 18, scope: !2959, inlinedAt: !3153)
!3153 = distinct !DILocation(line: 169, column: 10, scope: !2831)
!3154 = !DILocation(line: 50, column: 12, scope: !1735, inlinedAt: !3152)
!3155 = !DILocation(line: 153, column: 18, scope: !1746, inlinedAt: !3156)
!3156 = distinct !DILocation(line: 50, column: 24, scope: !1735, inlinedAt: !3152)
!3157 = !DILocation(line: 153, column: 69, scope: !1746, inlinedAt: !3156)
!3158 = !DILocation(line: 153, column: 74, scope: !1746, inlinedAt: !3156)
!3159 = !DILocation(line: 77, column: 6, scope: !1758, inlinedAt: !3160)
!3160 = distinct !DILocation(line: 153, column: 67, scope: !1746, inlinedAt: !3156)
!3161 = !DILocation(line: 50, column: 5, scope: !1735, inlinedAt: !3152)
!3162 = !DILocation(line: 50, column: 29, scope: !1735, inlinedAt: !3152)
!3163 = !DILocation(line: 0, scope: !1735, inlinedAt: !3152)
!3164 = !DILocation(line: 52, column: 8, scope: !1735, inlinedAt: !3152)
!3165 = !DILocation(line: 55, column: 3, scope: !1735, inlinedAt: !3152)
!3166 = !DILocation(line: 53, column: 17, scope: !1773, inlinedAt: !3167)
!3167 = distinct !DILocation(line: 55, column: 15, scope: !1735, inlinedAt: !3152)
!3168 = !DILocation(line: 54, column: 46, scope: !1773, inlinedAt: !3167)
!3169 = !DILocation(line: 54, column: 19, scope: !1773, inlinedAt: !3167)
!3170 = !DILocation(line: 14, column: 13, scope: !2126, inlinedAt: !2839)
!3171 = !DILocation(line: 14, column: 11, scope: !2126, inlinedAt: !2839)
!3172 = !DILocation(line: 14, column: 12, scope: !2126, inlinedAt: !2839)
!3173 = !DILocation(line: 215, column: 17, scope: !2132, inlinedAt: !2838)
!3174 = !DILocation(line: 216, column: 12, scope: !2132, inlinedAt: !2838)
!3175 = !DILocation(line: 217, column: 2, scope: !2132, inlinedAt: !2838)
!3176 = !DILocation(line: 13, column: 26, scope: !2126, inlinedAt: !2839)
!3177 = !DILocation(line: 13, column: 14, scope: !2126, inlinedAt: !2839)
!3178 = !DILocation(line: 13, column: 16, scope: !2126, inlinedAt: !2839)
!3179 = !DILocation(line: 0, scope: !2126, inlinedAt: !2839)
!3180 = distinct !DISubprogram(name: "runtime.tinygo_signal_handler", linkageName: "tinygo_signal_handler", scope: !131, file: !131, line: 420, type: !1883, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1496, retainedNodes: !3181)
!3181 = !{!3182, !3183, !3184, !3185}
!3182 = !DILocalVariable(name: "s", arg: 1, scope: !3180, file: !131, line: 420, type: !60)
!3183 = !DILocalVariable(name: "mask", scope: !3180, file: !131, line: 427, type: !43)
!3184 = !DILocalVariable(name: "val", scope: !3180, file: !131, line: 428, type: !43)
!3185 = !DILocalVariable(name: "swapped", scope: !3180, file: !131, line: 429, type: !47)
!3186 = !DILocation(line: 420, column: 6, scope: !3180)
!3187 = !DILocation(line: 0, scope: !3180)
!3188 = !DILocation(line: 427, column: 31, scope: !3180)
!3189 = !DILocation(line: 427, column: 3, scope: !3180)
!3190 = !DILocation(line: 147, column: 18, scope: !1940, inlinedAt: !3191)
!3191 = distinct !DILocation(line: 428, column: 30, scope: !3180)
!3192 = !DILocation(line: 147, column: 53, scope: !1940, inlinedAt: !3191)
!3193 = !DILocation(line: 183, column: 6, scope: !1948, inlinedAt: !3194)
!3194 = distinct !DILocation(line: 147, column: 51, scope: !1940, inlinedAt: !3191)
!3195 = !DILocation(line: 428, column: 3, scope: !3180)
!3196 = !DILocation(line: 429, column: 45, scope: !3180)
!3197 = !DILocation(line: 429, column: 50, scope: !3180)
!3198 = !DILocation(line: 429, column: 54, scope: !3180)
!3199 = !DILocation(line: 429, column: 53, scope: !3180)
!3200 = !DILocation(line: 156, column: 18, scope: !1802, inlinedAt: !3201)
!3201 = distinct !DILocation(line: 429, column: 44, scope: !3180)
!3202 = !DILocation(line: 157, column: 31, scope: !1802, inlinedAt: !3201)
!3203 = !DILocation(line: 157, column: 36, scope: !1802, inlinedAt: !3201)
!3204 = !DILocation(line: 157, column: 41, scope: !1802, inlinedAt: !3201)
!3205 = !DILocation(line: 99, column: 6, scope: !1814, inlinedAt: !3206)
!3206 = distinct !DILocation(line: 157, column: 29, scope: !1802, inlinedAt: !3201)
!3207 = !DILocation(line: 429, column: 3, scope: !3180)
!3208 = !DILocation(line: 430, column: 6, scope: !3180)
!3209 = !DILocation(line: 153, column: 18, scope: !1746, inlinedAt: !3210)
!3210 = distinct !DILocation(line: 437, column: 21, scope: !3180)
!3211 = !DILocation(line: 153, column: 69, scope: !1746, inlinedAt: !3210)
!3212 = !DILocation(line: 153, column: 74, scope: !1746, inlinedAt: !3210)
!3213 = !DILocation(line: 77, column: 6, scope: !1758, inlinedAt: !3214)
!3214 = distinct !DILocation(line: 153, column: 67, scope: !1746, inlinedAt: !3210)
!3215 = !DILocation(line: 437, column: 25, scope: !3180)
!3216 = !DILocation(line: 58, column: 17, scope: !1933, inlinedAt: !3217)
!3217 = distinct !DILocation(line: 441, column: 22, scope: !3180)
!3218 = !DILocation(line: 59, column: 50, scope: !1933, inlinedAt: !3217)
!3219 = !DILocation(line: 59, column: 23, scope: !1933, inlinedAt: !3217)
!3220 = !DILocation(line: 443, column: 2, scope: !3180)
!3221 = distinct !DISubprogram(name: "main.f_gold", linkageName: "f_gold", scope: !3222, file: !3222, line: 4, type: !3223, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1731, retainedNodes: !3229)
!3222 = !DIFile(filename: "MINIMUM_CHARACTERS_ADDED_FRONT_MAKE_STRING_PALINDROME_emit.go", directory: "/root/es/vert/vert/source_funs/go_transcoder/MINIMUM_CHARACTERS_ADDED_FRONT_MAKE_STRING_PALINDROME")
!3223 = !DISubroutineType(types: !3224)
!3224 = !{!3225}
!3225 = !DICompositeType(tag: DW_TAG_structure_type, name: "[]byte", size: 192, align: 64, elements: !3226)
!3226 = !{!3227, !367, !372}
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", baseType: !3228, size: 64, align: 64)
!3228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64, align: 64, dwarfAddressSpace: 0)
!3229 = !{!3230, !3231, !3232, !3233, !3234}
!3230 = !DILocalVariable(name: "s", arg: 1, scope: !3221, file: !3222, line: 4, type: !3225)
!3231 = !DILocalVariable(name: "l", scope: !3221, file: !3222, line: 6, type: !2130)
!3232 = !DILocalVariable(name: "j", scope: !3221, file: !3222, line: 7, type: !2130)
!3233 = !DILocalVariable(name: "i", scope: !3221, file: !3222, line: 10, type: !2130)
!3234 = !DILocalVariable(name: "j", scope: !3221, file: !3222, line: 10, type: !2130)
!3235 = !DILocation(line: 4, column: 6, scope: !3221)
!3236 = !DILocation(line: 6, column: 19, scope: !3221)
!3237 = !DILocation(line: 6, column: 3, scope: !3221)
!3238 = !DILocation(line: 7, column: 3, scope: !3221)
!3239 = !DILocation(line: 9, column: 6, scope: !3221)
!3240 = !DILocation(line: 10, column: 26, scope: !3221)
!3241 = !DILocation(line: 10, column: 27, scope: !3221)
!3242 = !DILocation(line: 10, column: 6, scope: !3221)
!3243 = !DILocation(line: 10, column: 9, scope: !3221)
!3244 = !DILocation(line: 10, column: 32, scope: !3221)
!3245 = !DILocation(line: 10, column: 34, scope: !3221)
!3246 = !DILocation(line: 0, scope: !3221)
!3247 = !DILocation(line: 19, column: 6, scope: !3221)
!3248 = !DILocation(line: 19, column: 8, scope: !3221)
!3249 = !DILocation(line: 19, column: 7, scope: !3221)
!3250 = !DILocation(line: 19, column: 14, scope: !3221)
!3251 = !DILocation(line: 19, column: 16, scope: !3221)
!3252 = !DILocation(line: 19, column: 15, scope: !3221)
!3253 = !DILocation(line: 19, column: 11, scope: !3221)
!3254 = !DILocation(line: 11, column: 3, scope: !3255, inlinedAt: !3258)
!3255 = distinct !DISubprogram(name: "main.f_gold$1", linkageName: "main.f_gold$1", scope: !3222, file: !3222, line: 10, type: !1891, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1731, retainedNodes: !3256)
!3256 = !{!3257}
!3257 = !DILocalVariable(name: "i", scope: !3255, file: !3222, line: 10, type: !2130)
!3258 = distinct !DILocation(line: 18, column: 3, scope: !3221)
!3259 = !DILocalVariable(name: "x", scope: !3260, file: !3222, line: 14, type: !2130)
!3260 = distinct !DISubprogram(name: "main.f_gold$1$1", linkageName: "main.f_gold$1$1", scope: !3222, file: !3222, line: 12, type: !1891, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1731, retainedNodes: !3261)
!3261 = !{!3262, !3259}
!3262 = !DILocalVariable(name: "p", scope: !3260, file: !3222, line: 13, type: !3263)
!3263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64, align: 64, dwarfAddressSpace: 0)
!3264 = !DILocation(line: 14, column: 4, scope: !3260, inlinedAt: !3265)
!3265 = distinct !DILocation(line: 17, column: 4, scope: !3255, inlinedAt: !3258)
!3266 = !DILocation(line: 15, column: 5, scope: !3260, inlinedAt: !3265)
!3267 = !DILocation(line: 15, column: 4, scope: !3260, inlinedAt: !3265)
!3268 = !DILocation(line: 10, column: 37, scope: !3221)
