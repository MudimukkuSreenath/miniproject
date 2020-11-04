package main
import ("fmt"
       "net/http"
)
func index_handler(w http.ResponceWriter, r *http.Request){
	fmt.Fprintf(w,"go is neat!")

}
func about_handler(w http.ResponceWriter, r *http.Request){
	fmt.Fprintf(w,"expert web design by sendex")
}
func main(){
	http.HandleFunc("/",index_handler)
	http.HandleFunc("/about/",about_handler)
	http.ListenAndServe(":8081",nil)
}