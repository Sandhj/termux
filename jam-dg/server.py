import http.server
import socketserver
import os

class MyHTTPRequestHandler(http.server.SimpleHTTPRequestHandler):
    def do_GET(self):
        # Jika root path diakses, tampilkan jam digital
        if self.path == '/':
            self.path = '/index.html'
        return super().do_GET()

def run_server():
    PORT = 5555
    HOST = '0.0.0.0'
    
    # Ganti direktori kerja ke direktori file ini
    os.chdir(os.path.dirname(os.path.abspath(__file__)))
    
    with socketserver.TCPServer((HOST, PORT), MyHTTPRequestHandler) as httpd:
        print(f"🚀 Server berjalan di http://{HOST}:{PORT}")
        print(f"📱 Akses dari perangkat lain di jaringan: http://[IP-KOMPUTER]:{PORT}")
        print("Tekan Ctrl+C untuk menghentikan server")
        
        try:
            httpd.serve_forever()
        except KeyboardInterrupt:
            print("\n🛑 Server dihentikan")

if __name__ == "__main__":
    run_server()
